let rec output_dataset i =
  let n = read_int () in
  if n = 0 then ()
  else begin
    let ans = Printf.sprintf "Case %d: %d" i n in
    print_endline ans;
    output_dataset (i + 1)
  end

let () = output_dataset 1