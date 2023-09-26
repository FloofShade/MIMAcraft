#get argument type
execute store result score result calc run data get storage bookgames:mima tech.command.arg
execute if score result calc matches 1 run scoreboard players set max calc 1048575
execute if score result calc matches 2 run scoreboard players set max calc 65535
execute if score result calc matches 1..2 run scoreboard players set min calc 0
execute if score result calc matches 3 run scoreboard players set max calc 8388607
execute if score result calc matches 3 run scoreboard players set min calc -8388608
execute if score result calc matches 4 run scoreboard players set max calc 5
execute if score result calc matches 4 run scoreboard players set min calc 0
execute unless score result calc matches 1.. run data modify storage bookgames:debug line.arg set value ""
execute if score result calc matches 1.. run function book:parse/number
#debug no arg and add line
execute store result storage bookgames:debug line.number int 1 run scoreboard players get i calc
data modify storage bookgames:debug lines append from storage bookgames:debug line

function book:parse/store_command with storage bookgames:mima tech.memloc

scoreboard players add i calc 1