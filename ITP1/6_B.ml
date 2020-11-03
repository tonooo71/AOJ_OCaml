let n = read_int ()

let rec scan sl hl cl dl cnt =
  if cnt = 0 then (sl, hl, cl, dl)
  else begin
    let g_, i_ = Scanf.sscanf (read_line ()) "%s %d" (fun a b -> (a, b)) in
    match g_ with
    | "S" -> scan (i_ :: sl) hl cl dl (cnt - 1);
    | "H" -> scan sl (i_ :: hl) cl dl (cnt - 1);
    | "C" -> scan sl hl (i_ :: cl) dl (cnt - 1);
    | "D" -> scan sl hl cl (i_ :: dl) (cnt - 1);
    | n'  -> (sl, hl, cl, dl)
  end

let sl, hl, cl, dl = scan [] [] [] [] n

let rec result char num_list num =
  if num = 14 then ()
  else begin
    let exist = List.exists (fun x -> x = num) num_list in
    if not exist then Printf.printf "%s %d\n" char num;
    result char num_list (num + 1)
  end

let () = result "S" sl 1
let () = result "H" hl 1
let () = result "C" cl 1
let () = result "D" dl 1