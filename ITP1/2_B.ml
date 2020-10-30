let a, b, c = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b c -> (a, b, c))

let ans x y z =
  if a < b && b < c then "Yes"
  else "No";;

let () = print_endline (ans a b c)
