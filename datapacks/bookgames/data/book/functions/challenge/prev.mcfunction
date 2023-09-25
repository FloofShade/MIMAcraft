scoreboard players remove #challenge calc 2
execute if score #challenge calc matches ..0 run scoreboard players set #challenge calc 0
execute store result storage bookgames:mima memloc.score int 1 run scoreboard players get #challenge calc
scoreboard players add #challenge calc 1
function book:challenge/get with storage bookgames:mima memloc