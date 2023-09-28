execute if score execute mima matches 1 run function book:execute/step

execute if score #linebreak calc matches 0 run data modify storage bookgames:mima lookup.linebreak set from block ~ -50 ~ Items[{Slot:0b}].tag.pages[0]
execute if score #linebreak calc matches 0 run data modify storage bookgames:mima lookup.ascii.10 set from storage bookgames:mima lookup.linebreak
execute if score #linebreak calc matches 0 run function book:interaction_displays
execute if score #linebreak calc matches 0 run scoreboard players set #linebreak calc 1

#interaction displays
execute as @a[limit=1] unless score @s left matches 0 run function book:setup
#interactions
execute as @e[tag=clicked,type=text_display] run function book:control/button_released
execute as @e[type=interaction] at @s on target run tag @s add clicker
execute as @e[type=interaction] at @s on target run tag @e[type=text_display,sort=nearest,limit=1] add clicked
execute as @e[tag=clicked,type=text_display] at @s run function book:control/button_pressed
tag @a[tag=clicker] remove clicker

#void kill
execute as @a at @s if entity @s[y=-12,dy=6] run tp @s 6 1.00 0 0.0 0.0

#triggers
execute as @a[scores={kill_bot=1..}] run function book:kill_bot
execute as @a[scores={show_mem=0..}] run function book:debug/show_mem


scoreboard players enable @a show_mem
scoreboard players enable @a kill_bot
