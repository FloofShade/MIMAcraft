scoreboard players set #challenge_success mima 0
$function book:challenge/check/$(label)

execute if score #challenge_success mima matches 1 run tellraw @a {"text":"Challenge completed!","color":"gold"}
execute unless score #challenge_success mima matches 1 run tellraw @a {"text":"Challenge failed!","color":"red"}