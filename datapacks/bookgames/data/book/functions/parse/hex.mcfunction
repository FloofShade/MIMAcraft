$data modify storage bookgames:debug string.full set value "$(arg)"
data modify storage bookgames:debug string.part set value ""
data modify storage bookgames:debug string.part set string storage bookgames:debug string.full 0 2
execute store result score result calc run data modify storage bookgames:debug string.part set from storage bookgames:mima lookup.hex
execute if score result calc matches 1 run scoreboard players set result calc -1
scoreboard players add result calc 1
execute if score result calc matches 1 run data modify storage bookgames:debug string.full set string storage bookgames:debug string.full 2
execute if score result calc matches 1 run data modify storage bookgames:debug string.part set string storage bookgames:debug string.full 0 1
execute if score result calc matches 1 run data modify storage bookgames:debug string.full set string storage bookgames:debug string.full 1
execute if score result calc matches 1 run scoreboard players set number calc 0
execute if score result calc matches 1 run function book:parse/decode_hex with storage bookgames:debug string
execute if score result calc matches 1 run function book:execute/fix_number