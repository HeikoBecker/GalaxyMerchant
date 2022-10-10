structure TestUtils = struct

  fun check exp msg =
    (if exp then () else Infra.failure msg)
    handle e => Infra.failure msg

  (** Needs to be unit to bool for exp to catch exceptions here because of
      call-by-value semantics **)
  fun checkfail (exp:unit -> 'a) msg =
    (exp (); Infra.failure msg)
    handle e => () (** If an exception is raised we got the expected result **)

end;
