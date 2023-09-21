data modify storage bookgames:mima mima set value {memory:{}}
data modify storage bookgames:mima lookup.labels set value {}
data modify storage bookgames:mima tech.execute set value {}
data modify storage bookgames:mima tech.print set value {"buffer":"","temp":""}
data modify storage bookgames:debug lines set value []
scoreboard players set execute mima 0
scoreboard players set IAR mima 0
scoreboard players set ACC mima 0
tellraw @a {"text":"\n\n\n\n\n\n\n\n"}
function book:load/split_pages with entity @s SelectedItem.tag
scoreboard players set i calc 0
function book:for_array {"function":"book:parse/find_labels","path":"tech.codewords"}
scoreboard players set i calc 0
function book:for_array {"function":"book:parse/parse","path":"tech.codewords"}

execute store result score IAR mima run data get storage bookgames:mima lookup.labels.start
tellraw @a [{"text":"Finished parsing the book! (starting IAR: ","color":"green"},{"score":{"name":"IAR","objective":"mima"},"color":"aqua"},")"]
tellraw @p {"text":"<click to show code>","color":"gold","clickEvent":{"action":"run_command","value":"/function book:debug/show_code"}}