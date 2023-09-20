data modify storage bookgames:mima tech.is_number set value [0]
$execute store success score result calc run data modify storage bookgames:mima tech.is_number append value $(arg)
execute if score result calc matches 1 store result score number calc run data get storage bookgames:mima tech.is_number[1]