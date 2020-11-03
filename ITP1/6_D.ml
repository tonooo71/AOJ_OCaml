let n, m = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> (a, b))

let rec y li cnt =
  if cnt = 0 then li
  else begin
    let x = read_line ()
    (* |> String.split_on_char ' ' *)
    |> Str.split (Str.regexp_string " ")
    |> List.map int_of_string
    in
    y (List.append li [x]) (cnt - 1)
  end

let rec z li cnt=
  if cnt = 0 then li
  else begin
    let i = read_int () in
    z (List.append li [i]) (cnt - 1)
  end

let ab = y [] n
let c = z [] m

let rec print_result a a_ b_ =
  if a = a_ then ()
  else begin
    let x_ = List.nth ab a in
    let ret = List.fold_left2 (fun d e f -> d + e * f) 0 x_ c in
    print_endline (string_of_int ret);
    print_result (a + 1) a_ b_
  end

let () = print_result 0 n m