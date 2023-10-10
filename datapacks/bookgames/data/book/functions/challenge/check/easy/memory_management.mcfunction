execute store result score #goal calc run data get storage bookgames:challenge goal.memory
execute store result score #x calc run data get storage bookgames:mima mima.memory.1
execute if score #x calc = #goal calc run advancement grant @a only book:easy_memory_management
execute if score #x calc = #goal calc run scoreboard players set #challenge_success mima 1