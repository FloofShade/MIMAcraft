function book:execute/get_arg
execute store result storage bookgames:mima tech.command.value int 1 run scoreboard players get ACC mima
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get arg calc
function book:parse/store_command with storage bookgames:mima tech.memloc
