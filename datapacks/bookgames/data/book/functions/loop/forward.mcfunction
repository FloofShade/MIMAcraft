$function $(function) {"i":$(i)}
scoreboard players add loop calc 1
execute store result storage bookgames:mima tech.makro[-1].i int 1 run scoreboard players get loop calc
execute if score loop calc < end calc run function book:loop/forward with storage bookgames:mima tech.makro[-1]