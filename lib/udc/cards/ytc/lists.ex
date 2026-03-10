list = [1, 2, 3]

# fast because puts at the beginning
[4] ++ list
# slow because we need to get the last one sequentially
list ++ [4]

# returns first item in list as a value
head = hd(list)
# returns everything but head as a list
tail = tl(list)
# returns first value using List module
first = List.first(list)
# returns last value using List module; expensive!
last = List.last(list)
IO.puts("INSPECT! head: #{inspect(head)}" <> "; tail: #{inspect(tail)}")
IO.puts("INSPECT! first: #{inspect(first)}" <> "; last: #{inspect(last)}")
# do List. tab to see all the available things in module
# Enum module also can be used for lists
