let t = read_int ()

let h x = x / 3600
let m x = (x mod 3600) / 60
let s x = x mod 60

let ans = Printf.sprintf "%d:%d:%d" (h t) (m t) (s t)
let () = print_endline ans