execute store result storage bookgames:challenge memloc.rng int 1 run random value -10..10
execute store result score #x calc run data get storage bookgames:challenge memloc.rng
data modify storage bookgames:challenge memloc.index set value 2
function book:challenge/set_rng with storage bookgames:challenge memloc

execute store result storage bookgames:challenge memloc.rng int 1 run random value -10..10
execute store result score #y calc run data get storage bookgames:challenge memloc.rng
data modify storage bookgames:challenge memloc.index set value 5
function book:challenge/set_rng with storage bookgames:challenge memloc

execute store result storage bookgames:challenge goal.ACC int 1 run scoreboard players operation #x calc *= #y calc