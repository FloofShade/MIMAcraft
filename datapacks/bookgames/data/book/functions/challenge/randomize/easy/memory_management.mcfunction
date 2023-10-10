execute store result storage bookgames:challenge memloc.rng int 1 run random value -100..100
data modify storage bookgames:challenge goal.memory set from storage bookgames:challenge memloc.rng
data modify storage bookgames:challenge memloc.index set value 2
function book:challenge/set_rng with storage bookgames:challenge memloc