scoreboard players set #stepCount calc 0
execute if score execute mima matches 0 run scoreboard players set #stepExec calc 1
execute if score execute mima matches 0 run scoreboard players set execute mima 1
function book:execute/step_loop
execute if score #stepExec calc matches 1 run scoreboard players set execute mima 0
execute if score #stepExec calc matches 1 run scoreboard players set #stepExec calc 0

