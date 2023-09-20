$execute unless score i calc matches 0 run data modify storage bookgames:mima tech.codewords append string storage bookgames:mima tech.page.grab 0 $(score)
$execute unless score i calc matches 0 run data modify storage bookgames:mima tech.page.grab set string storage bookgames:mima tech.page.grab $(score)
data modify storage bookgames:mima tech.page.grab set string storage bookgames:mima tech.page.grab 1
scoreboard players set i calc -1