data modify storage bookgames:challenge memloc.rng set value -1
execute store result score #x calc run random value 1..6
execute if score #x calc matches 1 run data modify storage bookgames:challenge goal.string set value "H"
execute if score #x calc matches 2 run data modify storage bookgames:challenge goal.string set value "He"
execute if score #x calc matches 3 run data modify storage bookgames:challenge goal.string set value "Hel"
execute if score #x calc matches 4 run data modify storage bookgames:challenge goal.string set value "Hell"
execute if score #x calc matches 5 run data modify storage bookgames:challenge goal.string set value "Hello"
execute if score #x calc matches 6 run data modify storage bookgames:challenge goal.string set value "Hello!"
scoreboard players operation #x calc *= #2 calc
scoreboard players add #x calc 2
execute store result storage bookgames:challenge memloc.index int 1 run scoreboard players get #x calc
function book:challenge/set_rng with storage bookgames:challenge memloc

