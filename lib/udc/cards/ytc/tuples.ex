# fixed size, saved sequentually (not like lists)
example = {1, 2, 3}
# output>>1; liek an arrays in other langs, access by index
IO.puts(elem(example, 0))
# elem() comes from Kernel module

# returns tuple>> {:ok, ""}
IO.puts(inspect(File.read("test_file.txt")))
