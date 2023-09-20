data modify storage bookgames:mima tech.execute.function set value ""
$execute store success score result calc run data modify storage bookgames:mima tech.execute set from storage bookgames:mima lookup.op.$(score)
execute store result score flow calc run data get storage bookgames:mima tech.execute.flow