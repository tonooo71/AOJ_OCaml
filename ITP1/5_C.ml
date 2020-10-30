let rec draw_rectangle () =
  let h, w = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> (a, b)) in
  if h = 0 && w = 0 then ()
  else begin
    let rec draw_line a b a_=
      let rec draw_sharp x =
        if x = 0 then print_endline ""
        else begin
          print_string "#";
          draw_dot (x - 1) 
        end
      and draw_dot x =
        if x = 0 then print_endline ""
        else begin
          print_string ".";
          draw_sharp (x - 1) 
        end
      in

      if a = 0 then print_endline ""
      else begin
        if (a mod 2) = (a_ mod 2) then draw_sharp b else draw_dot b;
        draw_line (a - 1) b a_
      end
    in

    draw_line h w h;
    draw_rectangle ()
  end

let () = draw_rectangle ()