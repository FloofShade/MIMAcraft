data modify storage bookgames:challenge goal.array set value [0,0,0,0]

execute store result storage bookgames:challenge memloc.rng int 1 run random value 1..5
execute store result score #x calc run data get storage bookgames:challenge memloc.rng
data modify storage bookgames:challenge memloc.index set value 2
function book:challenge/set_rng with storage bookgames:challenge memloc
execute store result storage bookgames:challenge memloc.rng int 1 run random value 1..5
execute store result score #y calc run data get storage bookgames:challenge memloc.rng
data modify storage bookgames:challenge memloc.index set value 5
function book:challenge/set_rng with storage bookgames:challenge memloc

execute store result storage bookgames:challenge goal.array[0] int 1 run scoreboard players operation #x calc += #y calc
execute store result storage bookgames:challenge goal.array[1] int 1 run scoreboard players operation #y calc += #x calc
execute store result storage bookgames:challenge goal.array[2] int 1 run scoreboard players operation #x calc += #y calc
execute store result storage bookgames:challenge goal.array[3] int 1 run scoreboard players operation #y calc += #x calc
