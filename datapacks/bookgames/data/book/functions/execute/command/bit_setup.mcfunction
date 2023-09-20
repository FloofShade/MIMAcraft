scoreboard players operation xnum calc = ACC mima
scoreboard players operation xnum calc %= #2^24 calc
function book:execute/get_arg
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get arg calc
function book:execute/fetch_data with storage bookgames:mima tech.memloc
scoreboard players operation number calc %= #2^24 calc
scoreboard players operation temp calc = #2^23 calc
scoreboard players set arg calc 0