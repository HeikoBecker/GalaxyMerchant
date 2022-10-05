structure UnitTests = struct

  open Tokenizer;

  fun test () =
    (Tokenizer.tokenize [])
    handle e => (print ("Error, test raised exception");
                 Infra.failure())

end
