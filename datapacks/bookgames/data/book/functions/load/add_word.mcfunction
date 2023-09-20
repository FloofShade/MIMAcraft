data modify storage bookgames:mima tech.page.temp set from storage bookgames:mima tech.page.letter
execute store success score space calc run data modify storage bookgames:mima tech.page.temp set from storage bookgames:mima lookup.ascii.32
execute if score space calc matches 1 run data modify storage bookgames:mima tech.page.temp set from storage bookgames:mima tech.page.letter
execute if score space calc matches 1 store success score space calc run data modify storage bookgames:mima tech.page.temp set from storage bookgames:mima lookup.linebreak
execute if score space calc matches 0 store result storage bookgames:mima tech.memloc.score int 1 run scoreboard players get i calc
execute if score space calc matches 0 run function book:load/extract_word with storage bookgames:mima tech.memloc