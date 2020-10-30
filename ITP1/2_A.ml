let a, b = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> (a, b))

let ret x y =
  if x < y then "a < b"
  else if x > y then "a > b"
  else "a == b";;

let () = print_endline (ret a b)
