$execute store result score IR mima run data get storage bookgames:mima mima.memory.$(score)
$execute unless data storage bookgames:mima mima.memory.$(score) run scoreboard players set execute mima 0
$execute unless data storage bookgames:mima mima.memory.$(score) run tellraw @a {"text":"ERROR: IAR pointed to unwritten memory. -terminating execution","color":"red"}
scoreboard players operation IR calc = IR mima