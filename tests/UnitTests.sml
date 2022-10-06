structure UnitTests = struct

  open Parser;

  fun check exp msg =
    (if exp then () else Infra.failure msg)
    handle e => Infra.failure msg

  (** Needs to be unit to bool for exp to catch exceptions here because of
      call-by-value semantics **)
  fun checkfail (exp:unit -> 'a) msg =
    (exp (); Infra.failure msg)
    handle e => () (** If an exception is raised we got the expected result **)

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
                   sum [V, I, I, I] = 8 andalso
                   sum [X, X] = 20 andalso
                   sum [X, V] = 15 andalso
                   sum [L, V] = 55 andalso
                   sum [C, L, I] = 151 andalso
                   sum [D, I] = 501 andalso
                   sum [M, V] = 1005) "Cannot sum simple number"
    val _ = check (sum [I, V] = 4 andalso
                   sum [I, X] = 9 andalso
                   sum [X, C] = 90 andalso
                   sum [X, X, I, X] =  29)
                  "Cannot subtract from next number"
    val _ = checkfail (fn () =>
                       (sum [I, I, X];
                       sum [I, I, V];
                       sum [X, X, X, C];
                       sum [C, C, M])) "Should not be able to subtract twice"
    val _ = checkfail (fn () =>
                        (sum [V, X];
                        sum [L, C];
                        sum [D, M])) "Should not subtract V, L,or D"
    val _ = checkfail (fn () =>
                        (sum [I, L];
                        sum [I, C];
                        sum [I, D];
                        sum [I, M];
                        sum [X, D];
                        sum [X, M]))
                      "I only subtractable from V and X and X only from L and C"
  in ()
  end;



end
