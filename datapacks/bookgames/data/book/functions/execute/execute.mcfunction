#get command from memory
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get IAR mima
function book:execute/fetch_command with storage bookgames:mima tech.memloc
#execute command
function book:execute/decode4

execute if score result calc matches 0 run function book:execute/decode8
execute if score result calc matches 0 run tellraw @a [{"text":"ERROR: Decoding failed, read value ","color":"red"},{"score":{"name":"IR","objective":"mima"},"color":"aqua"}," does not correspond to any valid opcode. -skipping memory address"]
execute if score result calc matches 1 run function book:execute/run_command with storage bookgames:mima tech.execute

#increase IAR
execute unless score flow calc matches 1 run scoreboard players add IAR mima 1