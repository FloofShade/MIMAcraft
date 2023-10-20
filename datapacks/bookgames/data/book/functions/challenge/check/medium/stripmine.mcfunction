execute store result score #result calc run fill 6 1 19 6 2 24 minecraft:cave_air replace air
execute if score #result calc matches 12 run advancement grant @a only book:medium_stripmine
execute if score #result calc matches 12 run scoreboard players set #challenge_success mima 1