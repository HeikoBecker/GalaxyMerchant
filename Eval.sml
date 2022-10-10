structure Eval = struct

  open Parser;

  type valuation = { gold : int option, silver : int option, iron: int option };

  datatype value =
    SumRes of string * int (* result of a summation *)
    | Conv of string * int (* result of a unit conversion *)

  type result =
    (valuation * (* current mapping from metals to credits *)
     (string * number) list * (* current mapping from names to numerals *)
     value option) (* produced computation result, NONE for env ops *)
    option (* as an option because eval may fail *)

  (** function eval evaluates the tokens in tks given the bindings in env,
      and it returns the result of the current operation
  **)
  fun eval (tks:token list)
           (vals: valuation)
           (env:(string * number) list)
           : result =
    let val {gold = goldOpt, silver = silverOpt, iron = ironOpt} = vals in
    case tks of
    [] => NONE (* empty list fails evaluation *)
    (** Overwriting on purpose **)
    | Name x :: Assign :: Num i :: [] => SOME (vals, (x,i) :: env, NONE)
    | _ => NONE
    end

end
