#execute if score number calc matches 1 run function book:execute/command/print_int
function book:execute/get_arg
execute if score arg calc matches 1 run tellraw @a {"score":{"name":"ACC","objective":"mima"},"color":"aqua"}
execute if score arg calc matches 11 run function book:execute/command/print_int
execute if score arg calc matches 0 run tellraw @a {"nbt":"tech.print.buffer","storage":"bookgames:mima","color":"aqua"}
execute if score arg calc matches 0 run data modify storage bookgames:mima tech.print.buffer set value ""
execute if score arg calc matches 32..126 store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get arg calc
execute if score arg calc matches 32..126 run function book:execute/command/print_ascii with storage bookgames:mima tech.memloc
