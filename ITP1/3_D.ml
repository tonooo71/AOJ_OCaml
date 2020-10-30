let a, b, c = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b c -> (a, b, c))

let rec yakusu x y z sum =
  if x > y then sum
  else begin
    let next_sum = if (z mod x) = 0 then sum + 1 else sum in
    yakusu (x + 1) y z next_sum
  end

let ans = yakusu a b c 0
let () = Printf.printf "%d\n" ans