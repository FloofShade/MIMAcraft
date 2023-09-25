data modify entity @e[tag=challenge_counter,limit=1] text set value '[{"score":{"name":"#challenge","objective":"calc"}},{"text":"/"},{"score":{"name":"#max_challenge","objective":"calc"}}]'
$data modify storage bookgames:challenge challenge set from storage bookgames:challenge challenges[$(score)]
data modify entity @e[tag=challenge_name,limit=1] text set value '[{"text":"Challenge: ","color":"green"},{"nbt":"challenge.name","storage":"bookgames:challenge"}]'
data modify entity @e[tag=challenge_difficulty,limit=1] text set from storage bookgames:challenge challenge.difficulty