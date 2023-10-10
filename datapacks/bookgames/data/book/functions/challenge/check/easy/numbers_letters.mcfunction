data modify storage bookgames:challenge goal.string set value "ABC"
execute store success score #result calc run data modify storage bookgames:challenge goal.string set from storage bookgames:debug last_print
execute if score #result calc matches 0 run advancement grant @a only book:easy_numbers_letters
execute if score #result calc matches 0 run scoreboard players set #challenge_success mima 1