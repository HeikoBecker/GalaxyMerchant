structure UnitTests = struct

  open Parser;

  fun check exp err =
    (if exp then () else Infra.failure err)
    handle e => Infra.failure err

  fun test () = let
    val _ = check (tokenize [] = []) "Parser does not support empty list"
    val _ = check
                  (tokenize ["I"] = [Num I] andalso
                   tokenize ["V"] = [Num V] andalso
                   tokenize ["X"] = [Num X] andalso
                   tokenize ["L"] = [Num L] andalso
                   tokenize ["C"] = [Num C] andalso
                   tokenize ["D"] = [Num D] andalso
                   tokenize ["M"] = [Num M])
                   "Parser does not properly constants"
    val _ = check (sum [] = 0) "Cannot sum empty list properly to 0";
    val _ = check (sum [I, I] = 2 andalso
                   sum [V, I] = 6 andalso
                   sum [X, X] = 20 andalso
                   sum [X, V] = 15 andalso
                   sum [L, V] = 55 andalso
                   sum [C, L, I] = 151 andalso
                   sum [D, I] = 501 andalso
                   sum [M, V] = 1005) "Cannot sum simple number"
  in ()
  end;



end
