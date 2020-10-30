let a, b, c = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b c -> (a, b, c))

let l = [a; b; c]

let ret x = List.sort (fun y z -> if y < z then -1 else 1) x
let rec print_list =
  function
  | [] -> ()
  | y :: rest ->
    match rest with
    | [] -> Printf.printf "%d" y; (*sprintfとどう違う?*)
    | n' -> Printf.printf "%d " y; (*sprintfとどう違う?*)
    print_list rest

let () = print_list (ret l)
let () = print_endline ("")