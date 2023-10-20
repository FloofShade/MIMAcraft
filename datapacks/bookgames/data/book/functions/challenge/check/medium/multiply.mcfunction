execute store result storage bookgames:challenge temp int 1 run scoreboard players get ACC mima
execute store success score #result calc run data modify storage bookgames:challenge goal.ACC set from storage bookgames:challenge temp

execute unless score #result calc matches 0 run scoreboard players set #tries calc 0
execute if score #result calc matches 0 run scoreboard players add #tries calc 1

tellraw @a [{"text":"Successful tries: ","color":"gold"},{"score":{"name":"#tries","objective":"calc"},"color":"aqua"},{"text":"/4","color":"gold"}]
execute if score #tries calc matches 4.. run advancement grant @a only book:medium_multiplication
execute if score #tries calc matches 4.. run scoreboard players set #challenge_success mima 1
execute if score #tries calc matches 1..3 run scoreboard players set #challenge_success mima 2