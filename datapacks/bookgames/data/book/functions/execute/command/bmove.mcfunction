function book:execute/get_arg
execute if score arg calc matches 0 as @e[type=armor_stand,tag=mima_bot] at @s if block ^ ^ ^1 #book:non_solid run tp @s ^ ^ ^1
execute if score arg calc matches 1 as @e[type=armor_stand,tag=mima_bot] at @s if block ^-1 ^ ^ #book:non_solid run tp @s ^-1 ^ ^
execute if score arg calc matches 2 as @e[type=armor_stand,tag=mima_bot] at @s if block ^ ^ ^-1 #book:non_solid run tp @s ^ ^ ^-1
execute if score arg calc matches 3 as @e[type=armor_stand,tag=mima_bot] at @s if block ^1 ^ ^ #book:non_solid run tp @s ^1 ^ ^
execute if score arg calc matches 4 as @e[type=armor_stand,tag=mima_bot] at @s if block ~ ~1 ~ #book:non_solid run tp @s ~ ~1 ~
execute if score arg calc matches 5 as @e[type=armor_stand,tag=mima_bot] at @s if block ~ ~-1 ~ #book:non_solid run tp @s ~ ~-1 ~