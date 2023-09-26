data modify storage bookgames:mima mima set value {memory:{}}
data modify storage bookgames:mima lookup.labels set value {}
data modify storage bookgames:mima tech.execute set value {}
data modify storage bookgames:mima tech.print set value {"buffer":"","temp":""}
data modify storage bookgames:debug lines set value []
scoreboard players set execute mima 0
scoreboard players set IAR mima 0
scoreboard players set ACC mima 0
tellraw @a {"text":"\n\n\n\n\n\n\n\n"}
function book:load/split_pages with entity @s SelectedItem.tag
scoreboard players set i calc 0
function book:for_array {"function":"book:parse/find_labels","path":"tech.codewords"}
scoreboard players set i calc 0
function book:for_array {"function":"book:parse/parse","path":"tech.codewords"}

execute store result score IAR mima run data get storage bookgames:mima lookup.labels.start
tellraw @a [{"text":"Finished parsing the book! (starting IAR: ","color":"green"},{"score":{"name":"IAR","objective":"mima"},"color":"aqua"},")"]
tellraw @p {"text":"<click to show code>","color":"gold","clickEvent":{"action":"run_command","value":"/function book:debug/show_code"}}

#spawn bot
tag @e[type=armor_stand] add old
execute at @e[type=armor_stand] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mima_bot"],NoGravity:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1372448163,950619791,-1813301732,-1173457259],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjg5ODA0Yjc5ODZhMWZlMDhlOWUyOTY2ZGNkMjg2ZjcyZWRiNTI4NzBjZWFlNzRjYzZmMGUwNTc0Y2JmNDFlMyJ9fX0="}]}}}}]}
execute as @e[type=armor_stand,tag=mima_bot] at @s run data modify entity @s Rotation[0] set from entity @e[type=armor_stand,limit=1,sort=nearest,tag=old] Rotation[0]
kill @e[type=armor_stand,tag=old]