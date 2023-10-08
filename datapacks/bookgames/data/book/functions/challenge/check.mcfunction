scoreboard players set #challenge_success mima 0
$function book:challenge/check/$(label)

execute if score #challenge_success mima matches 1 run tellraw @a {"text":"Challenge completed!","color":"gold"}
execute if score #challenge_success mima matches 1 as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.0
execute unless score #challenge_success mima matches 1 run tellraw @a {"text":"Challenge failed!","color":"red"}