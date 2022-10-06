structure Parser = struct

  open Infra;

  exception NotFound;
  exception IllegalFormat;

  datatype number =
    I | V | X | L | C | D | M;

  datatype token = Num of number;

  fun tokenize (ss:string list) : token list =
    case ss of
    [] => []
    | "I" :: ss2 => Num I :: tokenize ss2
    | "V" :: ss2 => Num V :: tokenize ss2
    | "X" :: ss2 => Num X :: tokenize ss2
    | "L" :: ss2 => Num L :: tokenize ss2
    | "C" :: ss2 => Num C :: tokenize ss2
    | "D" :: ss2 => Num D :: tokenize ss2
    | "M" :: ss2 => Num M :: tokenize ss2
    | _ => raise NOT_IMPLEMENTED;

  fun valOf (n : number): int =
    case n of
    I => 1 | V => 5 | X => 10 | L => 50 |C => 100
    | D => 500 | M => 1000;

  (** consume a symbol,
      returns the number of consumed elements and the remaining list **)
  fun consume (n:number) (ns: number list) : int * number list =
  let fun consume_acc (n:number) (ns:number list) (nocc:int) : int * number list =
    case ns of
     [] => (nocc, ns)
     | n1 :: ns2 => if n = n1 then consume_acc n ns2 (nocc + 1)
                    else (nocc, ns)
  in
    consume_acc n ns 0
  end

  fun peek (ns:number list) :number =
  case ns of [] => raise NotFound | n :: ns2 => n

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
        val (nocc, nums2) = consume hdElem nums
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
              let val (nocc_sub, nums3) = consume next nums2 in
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
