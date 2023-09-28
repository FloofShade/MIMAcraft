scoreboard players set i calc 0
execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get i calc
tellraw @a [{"text":"---\n","color":"gray"},{"text":"Label: Line | Command Argument","color":"green"}]
function book:debug/show_line with storage bookgames:mima tech.memloc