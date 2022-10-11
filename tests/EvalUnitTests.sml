structure EvalUnitTests = struct

  open TestUtils;
  open Eval;

  val emptyValuation = { gold = NONE, silver = NONE, iron = NONE };
  val silverOneVal = {gold = NONE, silver = SOME 1.0, iron = NONE};
  val cnstXIenv = [("x", I)];

  fun test () = let
    val _ = check (case eval [] emptyValuation [] of NONE => true |_ => false)
              "Empty command list should fail evaluation"
    val _ = check (case eval [Name "x", Assign, Num I] emptyValuation [] of
                  NONE => false
                  |SOME ({gold = NONE, silver = NONE, iron = NONE}, env, NONE) =>
                  env = cnstXIenv
                  | _ => false)
              "Assignment of variables not properly implemented"
    val _ = check ((case eval [Name "x", Assign, Num V] emptyValuation cnstXIenv of
                  NONE => false
                  | SOME ({gold = NONE, silver = NONE, iron = NONE}, env, NONE) =>
                    env = ("x", V)::cnstXIenv
                  | _ => false)
                    andalso
                  (case eval [Sum, Name "x", End] emptyValuation (("x", V)::cnstXIenv) of
                  NONE => false
                  | SOME ({gold = NONE, silver = NONE, iron = NONE}, env,
                            SOME (SumRes ("x", 5))) =>
                    env = ("x", V)::cnstXIenv
                  | _ => false))
              "Assignment does not properly overwrite old values"
    val _ = check (case eval [Name "x", Silver, Assign, Int 1, Credits]
                        emptyValuation cnstXIenv of
                    NONE => false
                    |SOME ({gold = NONE, silver = SOME silverVal, iron = NONE},
                            [("x", I)] , NONE) => Real.compare (silverVal, 1.0) = EQUAL
                    | _ => false)
              "Assignment of credit values not properly implemented"
    val _ = check (case eval [Sum, Name "x", Name "x", End] emptyValuation cnstXIenv of
                    NONE => false
                    | SOME ({gold = NONE, silver = NONE, iron = NONE}, env,
                            SOME (SumRes ("x x", 2))) =>
                    env = cnstXIenv
                    | _ => false)
              "Evaluation of summation not properly implemented"
    val _ = check (case eval [Convert, Credits, Assign, Name "x", Silver, End]
                        silverOneVal cnstXIenv of
                  NONE => false
                  | SOME ({gold = NONE, silver = SOME silverVal, iron = NONE},
                          [("x", I)], SOME (Conv ("x Silver", cstVal))) =>
                    Real.compare (cstVal, 1.0) = EQUAL
                  | _ => false)
              "Evaluation of conversion not properly implemented"
    val _ = check (case eval [Convert, Credits, Assign, Name "x", Silver, End]
                        emptyValuation cnstXIenv of
                  NONE => true
                  | _ => false)
              "Evaluation of conversion does not handle errors right"
  in ()
  end;

end
