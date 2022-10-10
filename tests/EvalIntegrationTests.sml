structure EvalIntegrationTest = struct

  open Eval;

  fun test() = let
    val _ = check (run ["glob", "is", "I"] = "")
                  "Assignments should be silent"
    val _ = check (run ["how", "much", "is", "glob"] = "glob is I")
    val _ = check (run ["glob", "Silver", "is", "1", "Credits"] = "")
                  "COnversions should be silent"
    in () end;

end
