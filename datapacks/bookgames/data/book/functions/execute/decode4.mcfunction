execute if score IR calc matches ..-1 run scoreboard players operation IR calc += #2^24 calc
scoreboard players operation IR calc /= #2^20 calc
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get IR calc
function book:execute/decode with storage bookgames:mima tech.memloc