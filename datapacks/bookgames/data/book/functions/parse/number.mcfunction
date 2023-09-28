data modify storage bookgames:mima tech.command.arg set from storage bookgames:mima tech.makro[-1].array[1]
data remove storage bookgames:mima tech.makro[-1].array[1]
#parse numbers
#decimal
function book:parse/decimal with storage bookgames:mima tech.command
#hex
execute if score result calc matches 0 run function book:parse/hex with storage bookgames:mima tech.command
#label
execute if score result calc matches 0 run data modify storage bookgames:mima tech.memloc.label set from storage bookgames:mima tech.command.arg
execute if score result calc matches 0 run function book:parse/get_label with storage bookgames:mima tech.memloc

#add argument
execute store result score command calc run data get storage bookgames:mima tech.command.value
execute store result storage bookgames:mima tech.command.value int 1 run scoreboard players operation command calc += number calc
#debug save argument
execute if score result calc matches 0 run data modify storage bookgames:debug line.arg set from storage bookgames:mima tech.memloc.label
execute unless score result calc matches 0 store result storage bookgames:debug line.arg int 1 run scoreboard players get number calc

#verify that numbers are 20 bit at most and not negative
execute if score number calc < min calc run tellraw @a [{"text":"ERROR: ","color":"red"},"Given number ",{"score":{"name":"number","objective":"calc"},"color":"aqua"},{"text":" falls below min value of ","color":"red"},{"score":{"name":"min","objective":"calc"},"color":"green"},{"text":". (Line: ","color":"red"},{"score":{"name":"i","objective":"calc"}},")"]
execute if score number calc > max calc run tellraw @a [{"text":"ERROR: ","color":"red"},"Given number ",{"score":{"name":"number","objective":"calc"},"color":"aqua"},{"text":" exceeds max value of ","color":"red"},{"score":{"name":"max","objective":"calc"},"color":"green"},{"text":". (Line: ","color":"red"},{"score":{"name":"i","objective":"calc"}},")"]