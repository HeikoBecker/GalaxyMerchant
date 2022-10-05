structure Parser = struct

  open Infra;

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

  fun sum (nums : number list) : int =
    case nums of
    [] => 0
    | n :: nums2 => valOf n + sum nums2

end
