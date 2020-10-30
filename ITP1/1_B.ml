let n = read_int ()

let rec pow x y =
  if y = 0 then 1 else x * (pow x (y - 1))

let ans = Printf.sprintf "%d" (pow n 3)
let () = print_endline ans