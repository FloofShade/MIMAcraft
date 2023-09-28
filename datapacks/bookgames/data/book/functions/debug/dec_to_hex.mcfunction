scoreboard players operation y calc = temp calc
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players operation y calc /= x calc
function book:debug/get_hex with storage bookgames:mima tech.memloc
function book:debug/combine_string with storage bookgames:debug string
scoreboard players operation temp calc %= x calc
scoreboard players operation x calc /= #16 calc
execute unless score x calc matches 0 run function book:debug/dec_to_hex

