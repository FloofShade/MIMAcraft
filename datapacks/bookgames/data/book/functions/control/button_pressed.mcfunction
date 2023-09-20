function book:control/set_text_color {color:"green"}
execute on passengers run data remove entity @s interaction

data modify storage bookgames:mima control.function set from entity @s Tags[0]
execute as @p[tag=clicker] run function book:control/execute with storage bookgames:mima control
execute if entity @s[tag=parse_and_run] as @p[tag=clicker] run function book:parse_run
execute if entity @s[tag=parse] as @p[tag=clicker] run function book:load_book