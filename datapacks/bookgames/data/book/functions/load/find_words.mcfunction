scoreboard players add i calc 1
data modify storage bookgames:mima tech.page.letter set string storage bookgames:mima tech.page.search 0 1
execute store success score letter calc run data modify storage bookgames:mima tech.page.search set string storage bookgames:mima tech.page.search 1
function book:load/add_word
execute if score letter calc matches 1 run function book:load/find_words