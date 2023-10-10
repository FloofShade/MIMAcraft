execute store result score #goal calc run data get storage bookgames:challenge goal.ACC
scoreboard players operation #x calc = ACC mima
execute if score #x calc = #goal calc run scoreboard players add #tries calc 1
execute unless score #x calc = #goal calc run scoreboard players set #tries calc 0
tellraw @a [{"text":"Successful tries: ","color":"gold"},{"score":{"name":"#tries","objective":"calc"},"color":"aqua"},{"text":"/10","color":"gold"}]
execute if score #tries calc matches 10.. run advancement grant @a only book:easy_is_equal
execute if score #tries calc matches 10.. run scoreboard players set #challenge_success mima 1
execute if score #tries calc matches 1..9 run scoreboard players set #challenge_success mima 2