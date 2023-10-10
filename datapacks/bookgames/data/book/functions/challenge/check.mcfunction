scoreboard players set #challenge_success mima 0
$function book:challenge/check/$(label)

execute if score #challenge_success mima matches 1 run tellraw @a {"text":"Challenge completed!","color":"gold"}
execute if score #challenge_success mima matches 1 as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.0
execute if score #challenge_success mima matches 0 run tellraw @a {"text":"Challenge failed!","color":"red"}

advancement grant @a[advancements={book:easy_numbers_letters=true,book:easy_halt=true,book:easy_is_equal=true,book:easy_memory_management=true,book:easy_more_negativity=true,book:easy_load_negative=true,book:easy_put_there=true,book:easy_stay_positive=true,book:easy_the_answer=true}] only book:easy_challenges