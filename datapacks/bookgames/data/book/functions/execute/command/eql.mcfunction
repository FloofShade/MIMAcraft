function book:execute/get_arg
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get arg calc
function book:execute/fetch_data with storage bookgames:mima tech.memloc
execute if score number calc = ACC mima run scoreboard players set result calc -1
execute unless score number calc = ACC mima run scoreboard players set result calc 0
scoreboard players operation ACC mima = result calc