data remove storage bookgames:debug show_line
$execute store result score result calc run data modify storage bookgames:debug show_line set from storage bookgames:debug lines[$(score)]
execute if score result calc matches 1 store result score temp calc run data get storage bookgames:debug show_line.last_label
execute store result score temp calc if score temp calc = i calc 
execute if score result calc matches 1 unless score temp calc matches 1 run tellraw @a [{"text":"Line: ","color":"gold"},{"score":{"name":"i","objective":"calc"}},{"text":" | ","color":"white"},{"nbt":"show_line.command","storage":"bookgames:debug","color":"gray"}," ",{"nbt":"show_line.arg","storage":"bookgames:debug","color":"gray"}]
execute if score result calc matches 1 if score temp calc matches 1 run tellraw @a [{"nbt":"show_line.label","storage":"bookgames:debug","color":"aqua"},{"text":" Line: ","color":"gold"},{"score":{"name":"i","objective":"calc"},"color":"gray"},{"text":" | ","color":"white"},{"nbt":"show_line.command","storage":"bookgames:debug","color":"gray"}," ",{"nbt":"show_line.arg","storage":"bookgames:debug","color":"gray"}]
scoreboard players add i calc 1
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get i calc
execute if score result calc matches 1 run function book:debug/show_line with storage bookgames:mima tech.memloc
