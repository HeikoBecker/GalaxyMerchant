structure EvalIntegrationTests = struct

  open TestUtils;
  open Eval;

  fun test() = let
    val _ = check (run ["glob", "is", "I"] = Cont "")
                  "Assignments should be silent"
    val _ = check (run ["how", "much", "is", "glob"] = Cont "glob is I")
    val _ = check (run ["glob", "Silver", "is", "1", "Credits"] = Cont "")
                  "Conversions should be silent"
    (** Tests from description below **)
    val _ = check (run ["glob", "is", "I"] = Cont "")
                  "First example line broken"
    val _ = check (run ["prok", "is", "V"] = Cont "")
                  "Second example line broken"
    val _ = check (run ["pish", "is", "X"] = Cont "")
                  "Third example line broken"
    val _ = check (run ["tegj", "is", "L"] = Cont "")
                  "4th example line broken"
    val _ = check (run ["glob", "glob", "Silver", "is", "34", "Credits"] = Cont "")
                  "5th example line broken"
    val _ = check (run ["glob", "prok", "Gold", "is", "57800", "Credits"] = Cont "")
                      "6th example line broken"
    val _ = check (run ["pish", "pish", "Iron", "is", "3910", "Credits"] = Cont "")
                      "7th example line broken"
    val _ = check (run ["how", "much", "is", "pish", "tegj", "glob", "glob", "?"] =
                      Cont "pish tegj glob glob is 42")
                      "8th example line broken"
    val _ = check (run ["how", "many", "Credits", "is", "glob", "prok", "Silver", "?"] =
                      Cont "glob prok Silver is 68.0 Credits")
                      "9th example line broken"
    val _ = check (run ["how", "many", "Credits", "is", "glob", "prok", "Gold", "?"] =
                      Cont "glob prok Gold is 57800.0 Credits")
                      "10th example line broken"
    val _ = check (run ["how", "many", "Credits", "is", "glob", "prok", "Iron", "?"] =
                      Cont "glob prok Iron is 782.0 Credits")
                      "11th example line broken"
    val _ = check (run ["how", "much", "wood", "could", "a", "woodchuck",
                        "chuck", "if", "a", "woodchuck", "could", "chuck",
                        "wood"] =
                    Fail "I have no idea what you are talking about")
                  "Not passing negative example test from description"
    in () end;

end
