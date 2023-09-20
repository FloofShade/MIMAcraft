function book:execute/get_arg
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get arg calc
function book:execute/fetch_data with storage bookgames:mima tech.memloc
scoreboard players operation number calc += ACC mima
#fix number bounds
function book:execute/fix_number
scoreboard players operation ACC mima = number calc
