$execute if score number calc >= x calc run data modify storage bookgames:mima tech.bits[$(i)] set value 1b
execute if score number calc >= x calc run scoreboard players operation number calc -= x calc
scoreboard players operation x calc /= #2 calc