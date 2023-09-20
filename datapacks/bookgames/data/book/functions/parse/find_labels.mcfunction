execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get i calc
# check if command
data modify storage bookgames:mima tech.command set value {}
$execute store success score is_command calc run data modify storage bookgames:mima tech.command set from storage bookgames:mima lookup.command.$(entry)
execute if score is_command calc matches 1 store result score result calc run data get storage bookgames:mima tech.command.arg
execute if score is_command calc matches 1 if score result calc matches 1.. run data remove storage bookgames:mima tech.makro[-1].array[1]
execute if score is_command calc matches 1 run scoreboard players add i calc 1
# else if label
execute if score is_command calc matches 0 run function book:parse/label