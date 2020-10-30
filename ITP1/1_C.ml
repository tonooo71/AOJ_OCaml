let a, b = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> (a, b))

let area x y = x * y
let length x y = (x + y) * 2

let ans = Printf.sprintf "%d %d" (area a b) (length a b)
let () = print_endline ans