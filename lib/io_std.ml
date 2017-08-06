type 'a t = 'a
let (>>=) a f = f a
let return a = a

type ic = in_channel
type oc = out_channel

let read_line ic =
  try
    Some (input_line ic)
  with
    End_of_file -> None

let read ic count = 
  let count = min count Sys.max_string_length in
  try
    really_input_string ic count
  with
    End_of_file -> ""

let write = output_string

let flush = flush
