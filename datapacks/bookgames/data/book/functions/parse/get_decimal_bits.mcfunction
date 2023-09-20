execute if score number calc >= maxBit calc run data modify storage bookgames:mima tech.command.value append value 1b
execute unless score number calc >= maxBit calc run data modify storage bookgames:mima tech.command.value append value 0b
execute if score number calc >= maxBit calc run scoreboard players operation number calc -= maxBit calc
scoreboard players operation maxBit calc /= #2 calc