structure Parser = struct

  open Infra;

  exception NotFound;
  exception IllegalFormat;

  datatype number =
    I | V | X | L | C | D | M;

  datatype token =
    Num of number
    | Assign
    | Gold
    | Silver
    | Iron
    | Credits
    | Name of string
    | Int of int
    | End
    | Sum
    | Convert
    | Quit

  fun consume (elem:''a) (ss:''a list) =
    case ss of [] => raise NotFound
    | x::ss2 => if elem = x then ss2 else raise NotFound;

  fun peek (ss: 'a list) :'a =
  case ss of [] => raise NotFound | n :: ss2 => n;

  fun tokenize (ss:string list) : token list =
    (case ss of
    [] => []
    | tok :: ss2 =>
      if tok = "how" then
        if peek ss2 = "much" then
          let val ss3 = consume "much" ss2
              val ss4 = consume "is" ss3
          in Sum :: tokenize ss4 end
        else
          let val ss3 = consume "many" ss2
          in Convert :: tokenize ss3 end
      else if tok = "quit" then [Quit]
      else
      (case tok of
       "I" => Num I
      | "V" => Num V
      | "X" => Num X
      | "L" => Num L
      | "C" => Num C
      | "D" => Num D
      | "M" => Num M
      | "Gold" => Gold
      | "Silver" => Silver
      | "Iron" => Iron
      | "Credits" => Credits
      | "?" => End
      | "is" => Assign
      | _ =>
        case Int.fromString tok of NONE => Name tok |SOME i => Int i) :: tokenize ss2)
    handle NotFound => [];

  fun valOf (n : number): int =
    case n of
    I => 1 | V => 5 | X => 10 | L => 50 |C => 100
    | D => 500 | M => 1000;

  (** consume a symbol,
      returns the number of consumed elements and the remaining list **)
  fun consumeNum (n:number) (ns: number list) : int * number list =
  let fun consumeNum_acc (n:number) (ns:number list) (nocc:int) : int * number list =
    case ns of
     [] => (nocc, ns)
     | n1 :: ns2 => if n = n1 then consumeNum_acc n ns2 (nocc + 1)
                    else (nocc, ns)
  in
    consumeNum_acc n ns 0
  end

  local
    (* shouldSubtract returns true if the operation must be a subtraction *)
    fun shouldSubtract n1 n2 = valOf n1 < valOf n2
    fun validSubtract n1 n2 =
      case (n1, n2) of
      (I, V) => true
      | (I, X) => true
      | (X, L) => true
      | (X, C) => true
      | _ => false
    fun validOccur n occ =
      ((n = I orelse n = X orelse n = C orelse n = M) andalso occ <= 3)
      orelse ((n = V orelse n = L orelse n = D) andalso occ = 1)
  in
    fun sum (nums : number list) : int =
      case nums of (* check first for corner cases *)
      [] => 0
      | _ => let
        (* take top element and count number of occurences *)
        val hdElem = peek nums
        val (nocc, nums2) = consumeNum hdElem nums
        in
        if nums2 = [] then (* corner case: empty remainder list *)
          (* if we have a valid number of occurences: sum *)
          if validOccur hdElem nocc then
            valOf hdElem * nocc
          else raise IllegalFormat
        else
        (* take next element to decide about operation *)
        let val next = peek nums2 in
          (* we can now decide whether we need to subtract or add *)
          if shouldSubtract hdElem next then
            (* validate subtraction step *)
            if nocc = 1 andalso validSubtract hdElem next then
              let val (nocc_sub, nums3) = consumeNum next nums2 in
                (* rule out corner cases like I X X which are not allowed *)
                if nocc_sub = 1 then (valOf next - valOf hdElem) + sum nums3
                else raise IllegalFormat
              end
            else raise IllegalFormat
          (* we did not subtract --> can only add,
             validate number of occurences *)
          else if validOccur hdElem nocc then
            (valOf hdElem * nocc) + sum nums2
          else raise IllegalFormat
        end
      end
  end

end
