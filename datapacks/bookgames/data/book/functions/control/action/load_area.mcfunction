execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get #area calc
execute positioned 2 -1 15 run function book:control/action/get_area_name with storage bookgames:mima tech.memloc
setblock 2 -2 15 redstone_block
tellraw @a [{"text":"Loaded area ","color":"green"},{"score":{"name":"#area","objective":"calc"},"color":"aqua"},"."]
