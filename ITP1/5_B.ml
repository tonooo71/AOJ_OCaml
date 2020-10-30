let rec draw_rectangle () =
  let h, w = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> (a, b)) in
  if h = 0 && w = 0 then ()
  else begin
    let rec draw_line a b _h _w =
      let rec draw_sharp x =
        if x = 0 then print_endline ""
        else begin
          print_string "#";
          draw_sharp (x - 1) 
        end
      in
      let rec draw_sharp2 x w_ =
        if x = 0 then print_endline ""
        else begin
          if x = w_ || x = 1 then print_string "#" else print_string ".";
          draw_sharp2 (x - 1) w_ 
        end
      in

      if a = 0 then print_endline ""
      else begin
        if a = _h || a = 1 then draw_sharp b else draw_sharp2 b w;
        draw_line (a - 1) b _h _w
      end
    in

    draw_line h w h w;
    draw_rectangle ()
  end

let () = draw_rectangle ()