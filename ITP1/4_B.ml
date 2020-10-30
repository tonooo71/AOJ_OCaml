let r = read_float ()

let pi = 3.14159265358979
let a = r *. r *. pi
let b = 2. *. r *. pi

let () = print_endline (Printf.sprintf "%f %f" a b)