execute unless score ACC mima matches 10 store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get ACC mima
execute unless score ACC mima matches 10 run function book:execute/command/print_ascii with storage bookgames:mima tech.memloc
execute if score ACC mima matches 10 run tellraw @a {"nbt":"tech.print.buffer","storage":"bookgames:mima","color":"aqua"}
execute if score ACC mima matches 10 run data modify storage bookgames:mima tech.print.buffer set value ""
