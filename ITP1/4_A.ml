let a, b = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> (a, b))

let d = a / b
let r = a mod b
let f = (float_of_int a) /. (float_of_int b)

let () = print_endline (Printf.sprintf "%d %d %f" d r f)