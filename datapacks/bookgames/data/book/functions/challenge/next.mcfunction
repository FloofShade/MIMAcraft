scoreboard players add #challenge calc 1
execute if score #challenge calc > #max_challenge calc run scoreboard players operation #challenge calc = #max_challenge calc
scoreboard players remove #challenge calc 1
execute store result storage bookgames:mima memloc.score int 1 run scoreboard players get #challenge calc
scoreboard players add #challenge calc 1
function book:challenge/get with storage bookgames:mima memloc
scoreboard players set #tries calc 0