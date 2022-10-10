structure EvalUnitTests = struct

  open TestUtils;
  open Eval;

  val emptyValuation = { gold = NONE, silver = NONE, iron = NONE };
  val silverOneVal = {gold = NONE, silver = SOME 1, iron = NONE};
  val cnstXIenv = [("x", I)];

  fun test () = let
    val _ = check (eval [] emptyValuation [] = NONE)
              "Empty command list should fail evaluation"
    val _ = check (eval [Name "x", Assign, Num I] emptyValuation [] =
                  SOME (emptyValuation, cnstXIenv, NONE))
              "Assignment of variables not properly implemented"
    val _ = check (eval [Name "x", Silver, Assign, Name "x", Credits]
                        emptyValuation cnstXIenv =
                    SOME (silverOneVal, cnstXIenv, NONE))
              "Assignment of credit values not properly implemented"
    val _ = check (eval [Sum, Name "x", Name "x"] emptyValuation cnstXIenv =
              SOME (emptyValuation, cnstXIenv, SOME (SumRes ("x x", 2))))
              "Evaluation of summation not properly implemented"
    val _ = check (eval [Convert, Credits, Assign, Name "x", Silver]
                        silverOneVal cnstXIenv =
                  SOME (silverOneVal, cnstXIenv, SOME (Conv ("x Silver", 1))))
              "Evaluation of conversion not properly implemented"
    val _ = check (eval [Convert, Credits, Assign, Name "x", Silver]
                        emptyValuation cnstXIenv =
                  NONE)
              "Evaluation of conversion does not handle errors right"
  in ()
  end;

end
