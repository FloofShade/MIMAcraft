execute store result storage bookgames:challenge memloc.rng int 1 run random value -100..100
execute store result score #goal calc run data get storage bookgames:challenge memloc.rng
execute if score #goal calc matches ..-1 run scoreboard players operation #goal calc *= #-1 calc
execute store result storage bookgames:challenge goal.ACC int 1 run scoreboard players get #goal calc
data modify storage bookgames:challenge memloc.index set value 5
function book:challenge/set_rng with storage bookgames:challenge memloc