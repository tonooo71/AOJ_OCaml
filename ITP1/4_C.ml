let rec scan () =
  let a, op, b = Scanf.sscanf (read_line ()) "%d %s %d" (fun a b c -> (a, b, c)) in
  let ans = match op with
            | "+" -> a + b
            | "-" -> a - b
            | "*" -> a * b
            | "/" -> a / b
            | n' -> 0 in
  if op = "?" then ()
  else begin
    Printf.printf "%d\n" ans;
    scan ()
  end

let () = scan ()