scoreboard players set #y calc 0
execute store result score #goal calc run data get storage bookgames:challenge goal.array[0]
execute store result score #x calc run data get storage bookgames:mima mima.memory.2
execute if score #x calc = #goal calc run scoreboard players add #y calc 1
execute store result score #goal calc run data get storage bookgames:challenge goal.array[1]
execute store result score #x calc run data get storage bookgames:mima mima.memory.3
execute if score #x calc = #goal calc run scoreboard players add #y calc 1
execute store result score #goal calc run data get storage bookgames:challenge goal.array[2]
execute store result score #x calc run data get storage bookgames:mima mima.memory.4
execute if score #x calc = #goal calc run scoreboard players add #y calc 1
execute store result score #goal calc run data get storage bookgames:challenge goal.array[3]
execute store result score #x calc run data get storage bookgames:mima mima.memory.5
execute if score #x calc = #goal calc run scoreboard players add #y calc 1

execute unless score #y calc matches 4 run scoreboard players set #tries calc 0
execute if score #y calc matches 4 run scoreboard players add #tries calc 1

tellraw @a [{"text":"Successful tries: ","color":"gold"},{"score":{"name":"#tries","objective":"calc"},"color":"aqua"},{"text":"/4","color":"gold"}]
execute if score #tries calc matches 4.. run advancement grant @a only book:medium_fibonacci
execute if score #tries calc matches 4.. run scoreboard players set #challenge_success mima 1
execute if score #tries calc matches 1..3 run scoreboard players set #challenge_success mima 2