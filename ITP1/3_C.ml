let rec loop_scan n =
  let a, b = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> (a, b)) in
  if a = 0 && b = 0 then ()
  else begin
    if a > b then print_endline (Printf.sprintf "%d %d" b a)
    else print_endline (Printf.sprintf "%d %d" a b);
    loop_scan 0;
  end

let () = loop_scan 0