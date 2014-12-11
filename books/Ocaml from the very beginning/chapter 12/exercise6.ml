(* Write a function copy_file of type string → string → unit which copies a file
line by line. For example, copy_file "a.txt" "b.txt" should produce a file
b.txt identical to a.txt . Make sure you deal with the case where the file
a.txt cannot be found, or where b.txt cannot be created or f illed. *)

let file_dupe f1 f2 =
  try
  let ch1 = open_in f1 in
    let ch2 = open_out f2 in
      let rec cpy ch1 ch2 =
        try
          output_string ch2 (input_line ch1);
          output_string ch2 "\n";
          cpy ch1 ch2;
        with 
          End_of_file -> ()
      in
        cpy ch1 ch2
  with
    Sys_error e -> print_string e;;

file_dupe "test.txt" "copy.txt";;
file_dupe "does not exist" "copy.txt";;
