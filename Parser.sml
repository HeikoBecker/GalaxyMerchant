structure Tokenizer = struct

  open Infra;

  datatype token = TOK ;

  fun tokenize (s:string list) : token list =
    if s = [] then [] else raise NOT_IMPLEMENTED;

end
