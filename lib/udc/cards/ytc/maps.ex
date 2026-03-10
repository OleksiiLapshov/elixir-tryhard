# ugly thing
map = %{"name" => "felix", :age => 25, 1 => false}
# returns false
IO.puts(map[1])
# returns name
IO.puts(map["name"])
# returns nil
IO.puts(inspect(map[:name]))
# returns number from map
IO.puts(map[:age])

# better syntax uses only atoms for keys
better_map = %{name: "bobby", age: 19}
# returns bobby
IO.puts(better_map.name)
# also returns bobby
IO.puts(better_map[:name])
# returns int
IO.puts(better_map.age)
# IO.puts(inspect(better_map.not_exist)) not working
# returns nil... AAAAAAAAAAAAAAAAAAAAAAAA
IO.puts(inspect(better_map[:not_exist]))

# get things with Map.get
# returns name
IO.puts(inspect(Map.get(better_map, :name)))
# returns nil
IO.puts(inspect(Map.get(better_map, :not_exist)))
# get and default
# retuns default value instead of nonexistent
IO.puts(inspect(Map.get(better_map, :not_exist, "hi!")))

# put
# DOES NOT MUTATE! Creates new
IO.puts(inspect(Map.put(better_map, :test, "test")))
# reassign
better_map = Map.put(better_map, :test, "test")
IO.puts(inspect(better_map))

# edit
# again. does NOT MUTATE!
%{better_map | age: 100}
IO.puts(inspect(better_map))
better_map = %{better_map | age: 100}
IO.puts(inspect(better_map))
# %{ better_map | age: 100, non_existant: true } throws an error
