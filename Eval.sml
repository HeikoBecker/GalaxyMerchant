structure Eval = struct

  open Parser;

  type valuation = { gold : int option, silver : int option, iron: int option };

  datatype value =
    SumRes of string * int (* result of a summation *)
    | Conv of string * int (* result of a unit conversion *)

  type result =
    (valuation * (* current mapping from metals to credits *)
     (string * number) list * (* current mapping from names to numerals *)
     value option) (* produced computation result, NONE for env ops *)
    option (* as an option because eval may fail *)

  local
    fun lookup x env = List.find (fn (y,_) => y = x) env
  in
    fun readNames (tks: token list)
                  (env: (string * number) list)
                  : (string * number list * token list) option=
      case tks of
      Name x :: tks2 =>
        (case List.find (fn (y,_) => y = x) env of
        NONE => NONE
        | SOME (y,i) =>
          case readNames tks2 env of NONE => NONE
          | SOME (str, nums, tksRem) =>
            let val yStr = if str = "" then y else y ^ " " ^ str
            in SOME (yStr, (i::nums), tksRem)
            end)
      | _ => SOME ("", [], tks)

    (** function eval evaluates the tokens in tks given the bindings in env,
        and it returns the result of the current operation
    **)
    fun eval (tks:token list)
             (vals: valuation)
             (env:(string * number) list)
             : result =
      let val {gold = goldOpt, silver = silverOpt, iron = ironOpt} = vals in
      case tks of
      [] => NONE (* empty list fails evaluation *)
      (** Overwriting on purpose **)
      | Name x :: Assign :: Num i :: [] => SOME (vals, (x,i) :: env, NONE)
      | Name x :: _ =>
        (case readNames tks env of NONE => NONE
        | SOME (nameX, numsX, tks2) =>
          (case tks2 of
          tok :: Assign :: Int i :: tks3 =>
            if tok = Gold orelse tok = Silver orelse tok = Iron then
              (let
              (** ratio for value in credits of 1 unit *)
                val value = i div (sum numsX)
                val newVals =
                (* match non-exhaustive, if check before ensures that no other
                   value can occur *)
                  case tok of
                    Gold => {gold = SOME value, silver = silverOpt, iron = ironOpt}
                    | Silver => {gold = goldOpt, silver = SOME value , iron = ironOpt}
                    | Iron => {gold = goldOpt, silver = silverOpt, iron = SOME value}
              in
                SOME (newVals, env, NONE)
              end
              handle IllegalFormat => NONE) (* TODO print exception *)
            else NONE
          | _ => NONE))
      | Sum :: tks2 =>
        (case readNames tks2 env of
        NONE => NONE
        | SOME (name, nums, tks3) =>
          case tks3 of
          [End] => SOME (vals, env, SOME (SumRes (name, sum nums)))
          | _ => NONE
        handle IllegalFormat => NONE) (* TODO Print exception *)
      | Convert :: Credits :: Assign :: tks2 =>
        (case readNames tks2 env of NONE => NONE
        | SOME (nameX, numsX, tks3) =>
          (case tks3 of
          Iron :: End :: [] =>
            (case ironOpt of NONE => NONE
            | SOME ironVal =>
              SOME (vals, env, SOME (Conv (nameX ^ " Iron", (sum numsX) div ironVal))))
          | Silver :: End :: [] =>
            (case silverOpt of NONE => NONE
            | SOME silverVal =>
              SOME (vals, env, SOME (Conv (nameX ^ " Silver", (sum numsX) div silverVal))))
          | Gold :: End :: [] =>
            (case goldOpt of NONE => NONE
            | SOME goldVal =>
              SOME (vals, env, SOME (Conv (nameX ^ " Gold", (sum numsX) div goldVal))))
          | _ => NONE
          handle IllegalFormat => NONE) (* TODO Print exception *)
          )
      | _ => NONE
      end
  end

end
