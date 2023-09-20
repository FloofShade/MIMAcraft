scoreboard players operation arg calc *= #2 calc
execute if score xnum calc >= temp calc unless score number calc >= temp calc run scoreboard players add arg calc 1
execute if score number calc >= temp calc run scoreboard players add arg calc 1
execute if score xnum calc >= temp calc run scoreboard players operation xnum calc -= temp calc
execute if score number calc >= temp calc run scoreboard players operation number calc -= temp calc
scoreboard players operation temp calc /= #2 calc
execute if score temp calc matches 1.. run function book:execute/command/or_bit