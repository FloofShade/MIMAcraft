$execute store result score result calc run data modify storage bookgames:debug line.command set from storage bookgames:debug lines[$(score)]
scoreboard players add i calc 1
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get i calc
execute if score result calc matches 1 run tellraw @a {"nbt":"line.command","storage":"bookgames:debug","color":"aqua"}
execute if score result calc matches 1 run function book:debug/show_line with storage bookgames:mima tech.memloc
