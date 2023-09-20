data modify storage bookgames:mima tech.makro append value {}
$data modify storage bookgames:mima tech.makro[-1].for_array.function set value "$(function)"
$data modify storage bookgames:mima tech.makro[-1].array set from storage bookgames:mima $(path)
function book:array/loop
data remove storage bookgames:mima tech.makro[-1]