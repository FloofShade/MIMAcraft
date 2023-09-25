scoreboard players remove #area calc 1
execute if score #area calc matches ..-1 run scoreboard players set #area calc 0
data modify entity @e[tag=areaCounter,limit=1] text set value '{"score":{"name":"#area","objective":"calc"}}'