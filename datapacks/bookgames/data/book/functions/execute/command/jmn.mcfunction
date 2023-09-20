function book:execute/get_arg
execute if score ACC mima matches ..-1 run scoreboard players operation IAR mima = arg calc
execute unless score ACC mima matches ..-1 run scoreboard players add IAR mima 1