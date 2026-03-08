list = [1, 2, 3]

[4] ++ list # fast because puts at the beginning
list ++ [4] #slow because we need to get the last one sequentially

head = hd(list) # returns first item in list as a value
tail = tl(list) # returns everything but head as a list
first = List.first(list) #returns first value using List module
last = List.last(list) #returns last value using List module; expensive!
IO.puts("INSPECT! head: #{inspect(head)}" <> "; tail: #{inspect(tail)}")
IO.puts("INSPECT! first: #{inspect(first)}" <> "; last: #{inspect(last)}")
# do List. tab to see all the available things in module
# Enum module also can be used for lists
