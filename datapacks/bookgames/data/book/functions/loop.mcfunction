data modify storage bookgames:mima tech.makro append value {}
$data modify storage bookgames:mima tech.makro[-1].function set value "$(function)"
$scoreboard players set loop calc $(start)
$scoreboard players set end calc $(stop)
execute store result storage bookgames:mima tech.makro[-1].i int 1 run scoreboard players get loop calc
execute if score loop calc < end calc run function book:loop/forward with storage bookgames:mima tech.makro[-1]
execute if score loop calc > end calc run function book:loop/backward with storage bookgames:mima tech.makro[-1]
data remove storage bookgames:mima tech.makro[-1]