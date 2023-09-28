$execute store result score temp calc run data get storage bookgames:mima lookup.hex_to_dec.$(part)
scoreboard players operation number calc *= #16 calc
scoreboard players operation number calc += temp calc
execute store result score x calc run data get storage bookgames:debug string.full
execute if score x calc matches 1.. run data modify storage bookgames:debug string.part set string storage bookgames:debug string.full 0 1
execute if score x calc matches 1.. run data modify storage bookgames:debug string.full set string storage bookgames:debug string.full 1
execute if score x calc matches 1.. run function book:parse/decode_hex with storage bookgames:debug string