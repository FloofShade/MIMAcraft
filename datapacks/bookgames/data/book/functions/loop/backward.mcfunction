$function $(function) {"i":$(i)}
scoreboard players remove loop calc 1
execute store result storage bookgames:mima tech.makro[-1].i int 1 run scoreboard players get loop calc
execute if score loop calc >= end calc run function book:loop/backward with storage bookgames:mima tech.makro[-1]