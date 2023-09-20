scoreboard players operation number calc *= #2 calc
execute unless score xnum calc >= arg calc run scoreboard players add number calc 1
execute if score xnum calc >= arg calc run scoreboard players operation xnum calc -= arg calc
scoreboard players operation arg calc /= #2 calc
execute if score arg calc matches 1.. run function book:execute/command/not_bit