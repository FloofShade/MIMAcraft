scoreboard players set #try_challenge mima 2
data modify storage bookgames:mima tech.codewords set from storage bookgames:challenge challenge.code
data modify storage bookgames:mima tech.memloc.label set from storage bookgames:challenge challenge.location
function book:challenge/randomize with storage bookgames:mima tech.memloc
function book:parse_run