execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get @s show_mem
function book:execute/fetch_data with storage bookgames:mima tech.memloc
scoreboard players set x calc 1048576
data modify storage bookgames:debug string.full set value "0x"
scoreboard players operation temp calc = number calc
scoreboard players operation temp calc %= #2^24 calc
function book:debug/dec_to_hex
scoreboard players operation temp calc = number calc
scoreboard players operation temp calc %= #2^24 calc
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players operation temp calc /= #2^20 calc
function book:debug/decode_command with storage bookgames:mima tech.memloc

scoreboard players operation temp calc = number calc
scoreboard players operation temp calc %= #2^24 calc
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players operation temp calc /= #2^16 calc
execute if score result calc matches 0 run function book:debug/decode_command with storage bookgames:mima tech.memloc

execute if score result calc matches 0 run tellraw @a [{"text":"---\n","color":"gray"},{"text":"Memory: ","color":"gold"},{"score":{"name":"@s","objective":"show_mem"},"color":"aqua"},{"text":"\nValue: ","color":"gold"},{"score":{"name":"number","objective":"calc"},"color":"aqua"},{"text":" Hex: ","color":"gold"},{"nbt":"string.full","storage":"bookgames:debug","color":"aqua"},{"text":" Command: ","color":"gold"},{"text":"None","color":"gray"}]
execute if score result calc matches 1 run tellraw @a [{"text":"---\n","color":"gray"},{"text":"Memory: ","color":"gold"},{"score":{"name":"@s","objective":"show_mem"},"color":"aqua"},{"text":"\nValue: ","color":"gold"},{"score":{"name":"number","objective":"calc"},"color":"aqua"},{"text":" Hex: ","color":"gold"},{"nbt":"string.full","storage":"bookgames:debug","color":"aqua"},{"text":" Command: ","color":"gold"},{"nbt":"command.name","storage":"bookgames:debug","color":"aqua"}," ",{"score":{"name":"arg","objective":"calc"},"color":"aqua"}]
scoreboard players set @s show_mem -1