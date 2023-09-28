data modify storage bookgames:debug command set value {}
$execute store result score result calc run data modify storage bookgames:debug command set from storage bookgames:mima lookup.op.$(score)
execute if score result calc matches 1 run scoreboard players operation arg calc = number calc
execute if score result calc matches 1 run scoreboard players operation arg calc %= #2^24 calc
execute if score result calc matches 1 store result score x calc run data get storage bookgames:debug command.value
execute if score result calc matches 1 run scoreboard players operation arg calc -= x calc
execute if score result calc matches 1 run scoreboard players operation arg calc %= #2^24 calc
execute if score result calc matches 1 if score number arg >= #2^23 calc run scoreboard players operation number calc -= #2^24 calc