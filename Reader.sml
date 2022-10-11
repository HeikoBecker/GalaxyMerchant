structure Reader = struct

  fun read() =
    let
      val lineOpt = TextIO.inputLine TextIO.stdIn;
    in
      case lineOpt of
      NONE => []
      | SOME line =>
          String.tokens (fn c => c = #" ")
            (String.translate
              (fn c => if c = #"\n" then "" else implode [c]) line)
    end;

end
