function book:execute/get_arg
execute if score arg calc matches 0 as @e[type=armor_stand,tag=mima_bot] at @s if block ^ ^ ^1 #book:non_solid run tag @s add trymove
execute if score arg calc matches 1 as @e[type=armor_stand,tag=mima_bot] at @s if block ^-1 ^ ^ #book:non_solid run tag @s add trymove
execute if score arg calc matches 2 as @e[type=armor_stand,tag=mima_bot] at @s if block ^ ^ ^-1 #book:non_solid run tag @s add trymove
execute if score arg calc matches 3 as @e[type=armor_stand,tag=mima_bot] at @s if block ^1 ^ ^ #book:non_solid run tag @s add trymove
execute if score arg calc matches 4 as @e[type=armor_stand,tag=mima_bot] at @s if block ~ ~1 ~ #book:non_solid run tag @s add trymove
execute if score arg calc matches 5 as @e[type=armor_stand,tag=mima_bot] at @s if block ~ ~-1 ~ #book:non_solid run tag @s add trymove

execute if score arg calc matches 0 as @e[type=armor_stand,tag=trymove] at @s run tp @s ^ ^ ^1
execute if score arg calc matches 1 as @e[type=armor_stand,tag=trymove] at @s run tp @s ^-1 ^ ^
execute if score arg calc matches 2 as @e[type=armor_stand,tag=trymove] at @s run tp @s ^ ^ ^-1
execute if score arg calc matches 3 as @e[type=armor_stand,tag=trymove] at @s run tp @s ^1 ^ ^
execute if score arg calc matches 4 as @e[type=armor_stand,tag=trymove] at @s run tp @s ~ ~1 ~
execute if score arg calc matches 5 as @e[type=armor_stand,tag=trymove] at @s run tp @s ~ ~-1 ~
execute positioned 2 0 17 run tag @e[type=armor_stand,tag=mima_bot,dx=7,dy=16,dz=7] add inbound
execute if score arg calc matches 0 as @e[type=armor_stand,tag=trymove,tag=!inbound] at @s run tp @s ^ ^ ^-1
execute if score arg calc matches 1 as @e[type=armor_stand,tag=trymove,tag=!inbound] at @s run tp @s ^1 ^ ^
execute if score arg calc matches 2 as @e[type=armor_stand,tag=trymove,tag=!inbound] at @s run tp @s ^ ^ ^1
execute if score arg calc matches 3 as @e[type=armor_stand,tag=trymove,tag=!inbound] at @s run tp @s ^-1 ^ ^
execute if score arg calc matches 4 as @e[type=armor_stand,tag=trymove,tag=!inbound] at @s run tp @s ~ ~-1 ~
execute if score arg calc matches 5 as @e[type=armor_stand,tag=trymove,tag=!inbound] at @s run tp @s ~ ~1 ~
tag @e[tag=trymove] remove trymove
tag @e[tag=inbound] remove inbound
