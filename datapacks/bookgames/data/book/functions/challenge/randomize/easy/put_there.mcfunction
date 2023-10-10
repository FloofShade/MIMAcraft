execute store result storage bookgames:challenge memloc.rng int 1 run random value 0..5
data modify storage bookgames:challenge memloc.index set value 14
function book:challenge/set_rng with storage bookgames:challenge memloc
execute store result score #x calc run data get storage bookgames:challenge memloc.rng
execute store result score #y calc run random value 0..5
execute if score #y calc = #x calc run scoreboard players add #y calc 2
execute if score #y calc matches 6.. run scoreboard players remove #y calc 6
execute store result storage bookgames:challenge memloc.rng int 1 run scoreboard players get #y calc
data modify storage bookgames:challenge memloc.index set value 17
function book:challenge/set_rng with storage bookgames:challenge memloc
data modify storage bookgames:challenge goal.array set value [1,2,3,4,5,6]
execute store result storage bookgames:challenge memloc.index int 1 run scoreboard players get #x calc
function book:challenge/randomize/get_array with storage bookgames:challenge memloc
execute store result storage bookgames:challenge memloc.rng int 1 run scoreboard players get #result calc
execute store result storage bookgames:challenge memloc.index int 1 run scoreboard players get #y calc
function book:challenge/randomize/set_array with storage bookgames:challenge memloc



