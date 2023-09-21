execute store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get i calc
# check if command
data modify storage bookgames:mima tech.command set value {}
$execute store success score is_command calc run data modify storage bookgames:mima tech.command set from storage bookgames:mima lookup.command.$(entry)
$execute if score is_command calc matches 1 run data modify storage bookgames:debug line.command set value "$(entry)"
execute if score is_command calc matches 1 run function book:parse/command


