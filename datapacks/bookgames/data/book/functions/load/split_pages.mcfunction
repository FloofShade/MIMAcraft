execute unless score #try_challenge mima matches 1 run data modify storage bookgames:mima tech.codewords set value []
$data modify storage bookgames:mima tech.pages set value $(pages)
function book:for_array {"function":"book:load/get_page","path":"tech.pages"}