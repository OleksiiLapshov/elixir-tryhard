# ugly thing
map = %{"name" => "felix", :age => 25, 1 => false}
IO.puts(map[1]) # returns false
IO.puts(map["name"]) #returns name
IO.puts(inspect(map[:name])) # returns nil
IO.puts(map[:age]) #returns number from map

#better syntax uses only atoms for keys
better_map = %{name: "bobby", age: 19}
IO.puts(better_map.name) #returns bobby
IO.puts(better_map[:name]) #also returns bobby
IO.puts(better_map.age) #returns int
# IO.puts(inspect(better_map.not_exist)) not working
IO.puts(inspect(better_map[:not_exist])) #returns nil... AAAAAAAAAAAAAAAAAAAAAAAA

#get things with Map.get
IO.puts(inspect(Map.get(better_map, :name))) # returns name
IO.puts(inspect(Map.get(better_map, :not_exist))) #returns nil
#get and default
IO.puts(inspect(Map.get(better_map, :not_exist, "hi!"))) #retuns default value instead of nonexistent

#put
IO.puts(inspect(Map.put(better_map, :test, "test"))) # DOES NOT MUTATE! Creates new
#reassign
better_map = Map.put(better_map, :test, "test")
IO.puts(inspect(better_map))

#edit
%{ better_map | age: 100 } #again. does NOT MUTATE!
IO.puts(inspect(better_map))
better_map = %{ better_map | age: 100 }
IO.puts(inspect(better_map))
# %{ better_map | age: 100, non_existant: true } throws an error
