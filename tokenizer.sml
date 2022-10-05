structure tokenizer = struct

  open infra;

  datatype token = TOK ;

  fun tokenize (s:string list) : token list = raise NOT_IMPLEMENTED;

  fun main () = ();

end
