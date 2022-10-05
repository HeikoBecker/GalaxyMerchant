structure Tokenizer = struct

  open Infra;

  datatype token = TOK ;

  fun tokenize (s:string list) : token list = raise NOT_IMPLEMENTED;

end
