scoreboard players operation temp_iar calc = IAR mima
function book:execute/execute
execute store result score result calc run data get storage bookgames:mima tech.execute.has_arg
execute if score result calc matches 1 run function book:execute/get_arg
execute if score result calc matches 1 run tellraw @a [{"text":"IAR: ","color":"gold"},{"score":{"name":"temp_iar","objective":"calc"}},{"text":" | ","color":"white"},{"nbt":"tech.execute.name","storage":"bookgames:mima"},{"text":" "},{"score":{"name":"arg","objective":"calc"}}]
execute if score result calc matches 0 run tellraw @a [{"text":"IAR: ","color":"gold"},{"score":{"name":"temp_iar","objective":"calc"}},{"text":" | ","color":"white"},{"nbt":"tech.execute.name","storage":"bookgames:mima"}]