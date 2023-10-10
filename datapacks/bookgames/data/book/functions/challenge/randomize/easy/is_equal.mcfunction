execute store result storage bookgames:challenge memloc.rng int 1 run random value 3..4
data modify storage bookgames:challenge memloc.index set value 2
function book:challenge/set_rng with storage bookgames:challenge memloc
execute store result score #x calc run data get storage bookgames:challenge memloc.rng

execute store result storage bookgames:challenge memloc.rng int 1 run random value 3..4
data modify storage bookgames:challenge memloc.index set value 5
function book:challenge/set_rng with storage bookgames:challenge memloc
execute store result score #y calc run data get storage bookgames:challenge memloc.rng

execute if score #x calc = #y calc run data modify storage bookgames:challenge goal.ACC set value -1
execute unless score #x calc = #y calc run data modify storage bookgames:challenge goal.ACC set value 0