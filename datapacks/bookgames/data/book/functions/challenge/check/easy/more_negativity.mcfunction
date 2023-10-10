execute store result score #goal calc run data get storage bookgames:challenge goal.ACC
scoreboard players operation #x calc = ACC mima
execute if score #x calc = #goal calc run advancement grant @a only book:easy_more_negativity
execute if score #x calc = #goal calc run scoreboard players set #challenge_success mima 1