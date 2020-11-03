let n = read_int ()

let rec list_init li num =
  if num = 0 then li
  else list_init (0 :: li) (num - 1)

let rec scan l1 l2 l3 l4 cnt =
  if cnt = 0 then (l1, l2, l3, l4)
  else begin
    let b, f, r, v = Scanf.sscanf (read_line ()) "%d %d %d %d" (fun a b c d -> (a, b, c, d)) in
    let ret i a = if (i + 1) = ((f - 1) * 10 + r) then a + v else a in
    match b with
    | 1 -> scan (List.mapi ret l1) l2 l3 l4 (cnt - 1)
    | 2 -> scan l1 (List.mapi ret l2) l3 l4 (cnt - 1)
    | 3 -> scan l1 l2 (List.mapi ret l3) l4 (cnt - 1)
    | 4 -> scan l1 l2 l3 (List.mapi ret l4) (cnt - 1)
    | n' -> (l1, l2, l3, l4)
  end

let rec print_apart cnt =
  function
  | [] -> ()
  | a :: b -> begin
    Printf.printf " %d" a;
    if (cnt mod 10) = 9 then print_endline "";
    print_apart (cnt + 1) b
  end

let print_sharp () = print_endline "####################"

let l1, l2, l3, l4 =
  scan (list_init [] 30) (list_init [] 30) (list_init [] 30) (list_init [] 30) n

let () = print_apart 0 l1
let () = print_sharp ()
let () = print_apart 0 l2
let () = print_sharp ()
let () = print_apart 0 l3
let () = print_sharp ()
let () = print_apart 0 l4