scoreboard players set execute mima 0
tellraw @a [{"text":"Finished execution at memory address ","color":"green"},{"score":{"name":"IAR","objective":"mima"},"color":"aqua"},"."]
execute if score #try_challenge mima matches 1 run data modify storage bookgames:mima tech.memloc.label set from storage bookgames:challenge challenge.location
execute if score #try_challenge mima matches 1 run function book:challenge/check with storage bookgames:mima tech.memloc