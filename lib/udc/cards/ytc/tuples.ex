example = {1, 2, 3} #fixed size, saved sequentually (not like lists)
IO.puts(elem(example, 0)) #output>>1; liek an arrays in other langs, access by index
# elem() comes from Kernel module

IO.puts(inspect(File.read("test_file.txt"))) # returns tuple>> {:ok, ""}
