let rec print_hello n =
  if n <= 0 then ()
  else begin
    print_endline "Hello World";
    print_hello (n - 1);
  end

let () = print_hello 1000