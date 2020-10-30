let n = read_int ()
let xs = read_line ()
  (* Ocaml 4.04から使えるのでAOJでは使えない *)
  (* |> String.split_on_char ' ' *)
  |> Str.split (Str.regexp_string " ")
  |> List.map int_of_string

let rec scand min max sum x =
  let hd = List.hd x in
  let tl = List.tl x in
  let min_ = if min > hd then hd else min in
  let max_ = if max < hd then hd else max in
  let sum_ = sum + hd in
  match tl with
  | [] -> Printf.printf "%d %d %d\n" min_ max_ sum_
  | n' -> scand min_ max_ sum_ tl

let () = scand 1000000 (-1000000) 0 xs