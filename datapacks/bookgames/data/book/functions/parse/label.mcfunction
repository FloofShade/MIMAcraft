data modify storage bookgames:mima tech.label set string storage bookgames:mima tech.makro[-1].array[0] -1
execute store success score is_label calc run data modify storage bookgames:mima tech.label set from storage bookgames:mima lookup.label

data modify storage bookgames:mima tech.memloc.label set string storage bookgames:mima tech.makro[-1].array[0] 0 -1
execute if score is_label calc matches 0 run function book:parse/store_label with storage bookgames:mima tech.memloc
execute if score is_label calc matches 1 run tellraw @a [{"text":"ERROR: Given word ","color":"red"},{"nbt":"tech.makro[-1].array[0]","storage":"bookgames:mima","color":"aqua"},{"text":" is an unknown command. -skipping line","color":"red"}," (Line: ",{"score":{"name":"i","objective":"calc"}},")"]