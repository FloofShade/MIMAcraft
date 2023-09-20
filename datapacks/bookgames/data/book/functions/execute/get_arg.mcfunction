execute store result score temp calc run data get storage bookgames:mima tech.execute.value
scoreboard players operation arg calc = IR mima 
execute if score arg calc matches ..-1 run scoreboard players operation arg calc += #2^24 calc
scoreboard players operation arg calc -= temp calc