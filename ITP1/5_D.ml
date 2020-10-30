let n = read_int ()

let rec three i max =
  if (i > max) then print_endline ""
  else begin
    if (i mod 3) = 0 || (i mod 10) = 3 then Printf.printf " %d" i
    else begin
      let rec exist_three x =
        if (x < 13) && x <> 3 then false
        else if x = 3 then true
        else begin
          if (x mod 10) = 3 then true
          else exist_three (x / 10)
        end
      in
      let is_three = exist_three i in
      if is_three then Printf.printf " %d" i else ()
    end;
    three (i + 1) max
  end

let () = three 1 n
