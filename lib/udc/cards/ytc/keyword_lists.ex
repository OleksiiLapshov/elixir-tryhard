IO.puts(inspect(String.split("1  2      3", " ", trim: true)))
IO.puts(inspect(String.split("1  2      3", " ", trim: true)))
IO.puts(inspect(String.split("1  2      3", " ", [{:trim, true}])))
# all of the above are the same. last one is the keyword list and others are syntax sugar

# 3rd param is the default
keyword = [age: 18, word: "test"]
# returns 18
IO.puts(Keyword.get(keyword, :age))
# returns "bad test" as default ebacuse it is not in list
IO.puts(Keyword.get(keyword, :test, "bad test"))
