function book:execute/get_arg
scoreboard players add IAR mima 1
execute store result storage bookgames:mima tech.command.value int 1 run scoreboard players get IAR mima
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get arg calc
function book:parse/store_command with storage bookgames:mima tech.memloc
scoreboard players add arg calc 1
scoreboard players operation IAR mima = arg calc