let w, h, x, y, r = Scanf.sscanf (read_line ()) "%d %d %d %d %d" (fun a b c d e -> (a, b, c, d, e))

let xb w x r =
  if x >= r && x <= w - r then true
  else false

let yb h y r =
  if y >= r && y <= h - r then true
  else false

let ans = if (xb w x r) && (yb h y r) then "Yes" else "No"

let () = print_endline (ans)