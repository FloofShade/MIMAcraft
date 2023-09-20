$data modify storage bookgames:mima tech.page.grab set value "$(entry)"
data modify storage bookgames:mima tech.page.search set from storage bookgames:mima tech.page.grab
scoreboard players set i calc -1
function book:load/find_words
data modify storage bookgames:mima tech.page.temp set from storage bookgames:mima tech.page.grab
execute store success score space calc run data modify storage bookgames:mima tech.page.temp set from storage bookgames:mima lookup.empty
execute if score space calc matches 1 run data modify storage bookgames:mima tech.codewords append from storage bookgames:mima tech.page.grab