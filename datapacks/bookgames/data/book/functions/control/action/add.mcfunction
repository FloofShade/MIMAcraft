scoreboard players add #steps calc 1
scoreboard players operation #steps calc %= #maxSteps calc
execute if score #steps calc matches 0 run scoreboard players set #steps calc 1
data modify entity @e[tag=stepCounter,limit=1] text set value '{"score":{"name":"#steps","objective":"calc"}}}'