let n = read_int ()
let a = read_line ()
  |> Str.split (Str.regexp_string " ")
  |> List.map int_of_string
  |> List.rev
  |> List.iteri (fun i a -> if i = (n - 1) then Printf.printf "%d\n" a else Printf.printf "%d " a)
