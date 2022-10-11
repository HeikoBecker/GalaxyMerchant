structure EvalIntegrationTests = struct

  open TestUtils;
  open Eval;

  fun test() = let
    val _ = check (run ["glob", "is", "I"] = "")
                  "Assignments should be silent"
    val _ = check (run ["how", "much", "is", "glob"] = "glob is I")
    val _ = check (run ["glob", "Silver", "is", "1", "Credits"] = "")
                  "Conversions should be silent"
    (** Tests from description below **)
    val _ = check (run ["glob", "is", "I"] = "")
                  "First example line broken"
    val _ = check (run ["prok", "is", "V"] = "")
                  "Second example line broken"
    val _ = check (run ["pish", "is", "X"] = "")
                  "Third example line broken"
    val _ = check (run ["tegj", "is", "L"] = "")
                  "4th example line broken"
    val _ = check (run ["glob", "glob", "Silver", "is", "34", "Credits"] = "")
                  "5th example line broken"
    val _ = check (run ["glob", "prok", "Gold", "is", "57800", "Credits"] = "")
                      "6th example line broken"
    val _ = check (run ["pish", "pish", "Iron", "is", "3910", "Credits"] = "")
                      "7th example line broken"
    val _ = check (run ["how", "much", "is", "pish", "tegj", "glob", "glob", "?"] =
                      "pish tegj glob glob is 42")
                      "8th example line broken"
    val _ = check (run ["how", "many", "Credits", "is", "glob", "prok", "Silver", "?"] =
                      "glob prok Silver is 68.0 Credits")
                      "9th example line broken"
    val _ = check (run ["how", "many", "Credits", "is", "glob", "prok", "Gold", "?"] =
                      "glob prok Gold is 57800.0 Credits")
                      "10th example line broken"
    val _ = check (run ["how", "many", "Credits", "is", "glob", "prok", "Iron", "?"] =
                      "glob prok Iron is 782.0 Credits")
                      "11th example line broken"
    val _ = check (run ["how", "much", "wood", "could", "a", "woodchuck",
                        "chuck", "if", "a", "woodchuck", "could", "chuck",
                        "wood"] =
                    "I have no idea what you are talking about")
                  "Not passing negative example test from description"
    in () end;

end
