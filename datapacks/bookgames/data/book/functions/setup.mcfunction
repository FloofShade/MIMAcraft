tellraw @a {"text":"Reloading MIMA Datapack!"}
scoreboard objectives add calc dummy
scoreboard objectives add mima dummy

scoreboard players set #-1 calc -1
scoreboard players set #2 calc 2
scoreboard players set #16 calc 16
scoreboard players set #2^16 calc 65536
scoreboard players set #2^20 calc 1048576
scoreboard players set #2^23 calc 8388608
scoreboard players set #2^24 calc 16777216

#triggers
scoreboard objectives add show_mem trigger
scoreboard players set @a show_mem -1
scoreboard objectives add kill_bot trigger

#steps
scoreboard players set #steps calc 20
scoreboard players set #maxSteps calc 100
#area
scoreboard players set #area calc 0
#challenges
scoreboard players set #challenge calc 1
scoreboard players set #max_challenge calc 21
scoreboard players set #tries calc 0
function book:challenge/setup
#gamerules
gamerule doMobSpawning false
gamerule keepInventory true
gamerule spawnRadius 0
#gamerule sendCommandFeedback false
setworldspawn 6 1 -1 0

#line break magic
setblock ~ -50 ~ chest
loot replace block ~ -50 ~ container.0 loot book:line_break
scoreboard players set #linebreak calc 0
# increase max command chain
gamerule maxCommandChainLength 2147483647
#mima
scoreboard players set execute mima 0
data remove storage bookgames:mima lookup
#number formats
data modify storage bookgames:mima lookup.decimal set value "x"
data modify storage bookgames:mima lookup.hex set value "0x"
#labeling
data modify storage bookgames:mima lookup.label set value ":"
#commands
# 4 bit op code
data modify storage bookgames:mima lookup.command.DS set value {"value":0,"arg":3b}
data modify storage bookgames:mima lookup.command.LDC set value {"value":0,"arg":1b}
data modify storage bookgames:mima lookup.command.LDV set value {"value":1048576,"arg":1b}
data modify storage bookgames:mima lookup.command.STV set value {"value":2097152,"arg":1b}
data modify storage bookgames:mima lookup.command.ADD set value {"value":3145728,"arg":1b}
data modify storage bookgames:mima lookup.command.AND set value {"value":4194304,"arg":1b}
data modify storage bookgames:mima lookup.command.OR set value {"value":5242880,"arg":1b}
data modify storage bookgames:mima lookup.command.XOR set value {"value":6291456,"arg":1b}
data modify storage bookgames:mima lookup.command.EQL set value {"value":7340032,"arg":1b}
data modify storage bookgames:mima lookup.command.JMP set value {"value":8388608,"arg":1b}
data modify storage bookgames:mima lookup.command.JMN set value {"value":9437184,"arg":1b}
data modify storage bookgames:mima lookup.command.LDIV set value {"value":10485760,"arg":1b}
data modify storage bookgames:mima lookup.command.STIV set value {"value":11534336,"arg":1b}
data modify storage bookgames:mima lookup.command.JMS set value {"value":12582912,"arg":1b}
data modify storage bookgames:mima lookup.command.JIND set value {"value":13631488,"arg":1b}

# 8 bit op code
# starting at 1111 0000
data modify storage bookgames:mima lookup.command.HALT set value {"value":-1048576,"arg":0b}
data modify storage bookgames:mima lookup.command.NOT set value {"value":-983040,"arg":0b}
#data modify storage bookgames:mima lookup.command.RAR set value {"value":-917504,"arg":0b}

data modify storage bookgames:mima lookup.command.PRINT set value {"value":-851968,"arg":0b}

data modify storage bookgames:mima lookup.command.BRR set value {"value":-786432,"arg":0b}
data modify storage bookgames:mima lookup.command.BGET set value {"value":-720896,"arg":4b}
data modify storage bookgames:mima lookup.command.BMINE set value {"value":-655360,"arg":4b}
data modify storage bookgames:mima lookup.command.BPLACE set value {"value":-589824,"arg":4b}
data modify storage bookgames:mima lookup.command.BMOVE set value {"value":-524288,"arg":4b}

data modify storage bookgames:mima lookup.command.BREAK set value {"value":-458752,"arg":0b}

data modify storage bookgames:mima lookup.op.0 set value {"function":"book:execute/command/ldc","flow":0b,"value":0,"name":"LDC",has_arg:1b}
data modify storage bookgames:mima lookup.op.1 set value {"function":"book:execute/command/ldv","flow":0b,"value":1048576,"name":"LDV",has_arg:1b}
data modify storage bookgames:mima lookup.op.2 set value {"function":"book:execute/command/stv","flow":0b,"value":2097152,"name":"STV",has_arg:1b}
data modify storage bookgames:mima lookup.op.3 set value {"function":"book:execute/command/add","flow":0b,"value":3145728,"name":"ADD",has_arg:1b}
data modify storage bookgames:mima lookup.op.4 set value {"function":"book:execute/command/and","flow":0b,"value":4194304,"name":"AND",has_arg:1b}
data modify storage bookgames:mima lookup.op.5 set value {"function":"book:execute/command/or","flow":0b,"value":5242880,"name":"OR",has_arg:1b}
data modify storage bookgames:mima lookup.op.6 set value {"function":"book:execute/command/xor","flow":0b,"value":6291456,"name":"XOR",has_arg:1b}
data modify storage bookgames:mima lookup.op.7 set value {"function":"book:execute/command/eql","flow":0b,"value":7340032,"name":"EQL",has_arg:1b}
data modify storage bookgames:mima lookup.op.8 set value {"function":"book:execute/command/jmp","flow":1b,"value":8388608,"name":"JMP",has_arg:1b}
data modify storage bookgames:mima lookup.op.9 set value {"function":"book:execute/command/jmn","flow":1b,"value":9437184,"name":"JMN",has_arg:1b}
data modify storage bookgames:mima lookup.op.10 set value {"function":"book:execute/command/ldiv","flow":0b,"value":10485760,"name":"LDIV",has_arg:1b}
data modify storage bookgames:mima lookup.op.11 set value {"function":"book:execute/command/stiv","flow":0b,"value":11534336,"name":"STIV",has_arg:1b}
data modify storage bookgames:mima lookup.op.12 set value {"function":"book:execute/command/jms","flow":1b,"value":12582912,"name":"JMS",has_arg:1b}
data modify storage bookgames:mima lookup.op.13 set value {"function":"book:execute/command/jind","flow":1b,"value":13631488,"name":"JIND",has_arg:1b}

data modify storage bookgames:mima lookup.op.240 set value {"function":"book:execute/command/halt","flow":1b,"value":15728640,"name":"HALT",has_arg:0b}
data modify storage bookgames:mima lookup.op.241 set value {"function":"book:execute/command/not","flow":0b,"value":15794176,"name":"NOT",has_arg:0b}
#data modify storage bookgames:mima lookup.op.242 set value {"function":"book:execute/command/rar","flow":0b,"value":15859712,"name":"RAR",has_arg:0b}
data modify storage bookgames:mima lookup.op.243 set value {"function":"book:execute/command/print","flow":0b,"value":15925248,"name":"PRINT",has_arg:0b}
#bot commands
data modify storage bookgames:mima lookup.op.244 set value {"function":"book:execute/command/brr","flow":0b,"value":15990784,"name":"BRR",has_arg:0b}
data modify storage bookgames:mima lookup.op.245 set value {"function":"book:execute/command/bget","flow":0b,"value":16056320,"name":"BGET",has_arg:1b}
data modify storage bookgames:mima lookup.op.246 set value {"function":"book:execute/command/bmine","flow":0b,"value":16121856,"name":"BMINE",has_arg:1b}
data modify storage bookgames:mima lookup.op.247 set value {"function":"book:execute/command/bplace","flow":0b,"value":16187392,"name":"BPLACE",has_arg:1b}
data modify storage bookgames:mima lookup.op.248 set value {"function":"book:execute/command/bmove","flow":0b,"value":16252928,"name":"BMOVE",has_arg:1b}

data modify storage bookgames:mima lookup.op.249 set value {"function":"book:execute/command/break","flow":0b,"value":16318464,"name":"BREAK",has_arg:0b}

# ascii table
data modify storage bookgames:mima lookup.ascii.32 set value " "
data modify storage bookgames:mima lookup.empty set string storage bookgames:mima lookup.ascii.32 0 0
data modify storage bookgames:mima lookup.ascii.33 set value "!"
data modify storage bookgames:mima lookup.ascii.34 set value "\""
data modify storage bookgames:mima lookup.ascii.35 set value "#"
data modify storage bookgames:mima lookup.ascii.36 set value "$"
data modify storage bookgames:mima lookup.ascii.37 set value "%"
data modify storage bookgames:mima lookup.ascii.38 set value "&"
data modify storage bookgames:mima lookup.ascii.39 set value "'"

data modify storage bookgames:mima lookup.ascii.40 set value "("
data modify storage bookgames:mima lookup.ascii.41 set value ")"
data modify storage bookgames:mima lookup.ascii.42 set value "*"
data modify storage bookgames:mima lookup.ascii.43 set value "+"
data modify storage bookgames:mima lookup.ascii.44 set value ","
data modify storage bookgames:mima lookup.ascii.45 set value "-"
data modify storage bookgames:mima lookup.ascii.46 set value "."
data modify storage bookgames:mima lookup.ascii.47 set value "/"
data modify storage bookgames:mima lookup.ascii.48 set value "0"
data modify storage bookgames:mima lookup.ascii.49 set value "1"

data modify storage bookgames:mima lookup.ascii.50 set value "2"
data modify storage bookgames:mima lookup.ascii.51 set value "3"
data modify storage bookgames:mima lookup.ascii.52 set value "4"
data modify storage bookgames:mima lookup.ascii.53 set value "5"
data modify storage bookgames:mima lookup.ascii.54 set value "6"
data modify storage bookgames:mima lookup.ascii.55 set value "7"
data modify storage bookgames:mima lookup.ascii.56 set value "8"
data modify storage bookgames:mima lookup.ascii.57 set value "9"
data modify storage bookgames:mima lookup.ascii.58 set value ":"
data modify storage bookgames:mima lookup.ascii.59 set value ";"

data modify storage bookgames:mima lookup.ascii.60 set value "<"
data modify storage bookgames:mima lookup.ascii.61 set value "="
data modify storage bookgames:mima lookup.ascii.62 set value ">"
data modify storage bookgames:mima lookup.ascii.63 set value "?"
data modify storage bookgames:mima lookup.ascii.64 set value "@"
data modify storage bookgames:mima lookup.ascii.65 set value "A"
data modify storage bookgames:mima lookup.ascii.66 set value "B"
data modify storage bookgames:mima lookup.ascii.67 set value "C"
data modify storage bookgames:mima lookup.ascii.68 set value "D"
data modify storage bookgames:mima lookup.ascii.69 set value "E"

data modify storage bookgames:mima lookup.ascii.70 set value "F"
data modify storage bookgames:mima lookup.ascii.71 set value "G"
data modify storage bookgames:mima lookup.ascii.72 set value "H"
data modify storage bookgames:mima lookup.ascii.73 set value "I"
data modify storage bookgames:mima lookup.ascii.74 set value "J"
data modify storage bookgames:mima lookup.ascii.75 set value "K"
data modify storage bookgames:mima lookup.ascii.76 set value "L"
data modify storage bookgames:mima lookup.ascii.77 set value "M"
data modify storage bookgames:mima lookup.ascii.78 set value "N"
data modify storage bookgames:mima lookup.ascii.79 set value "O"

data modify storage bookgames:mima lookup.ascii.80 set value "P"
data modify storage bookgames:mima lookup.ascii.81 set value "Q"
data modify storage bookgames:mima lookup.ascii.82 set value "R"
data modify storage bookgames:mima lookup.ascii.83 set value "S"
data modify storage bookgames:mima lookup.ascii.84 set value "T"
data modify storage bookgames:mima lookup.ascii.85 set value "U"
data modify storage bookgames:mima lookup.ascii.86 set value "V"
data modify storage bookgames:mima lookup.ascii.87 set value "W"
data modify storage bookgames:mima lookup.ascii.88 set value "X"
data modify storage bookgames:mima lookup.ascii.89 set value "Y"

data modify storage bookgames:mima lookup.ascii.90 set value "Z"
data modify storage bookgames:mima lookup.ascii.91 set value "["
data modify storage bookgames:mima lookup.ascii.92 set value "\\"
data modify storage bookgames:mima lookup.ascii.93 set value "]"
data modify storage bookgames:mima lookup.ascii.94 set value "^"
data modify storage bookgames:mima lookup.ascii.95 set value "_"
data modify storage bookgames:mima lookup.ascii.96 set value "`"
data modify storage bookgames:mima lookup.ascii.97 set value "a"
data modify storage bookgames:mima lookup.ascii.98 set value "b"
data modify storage bookgames:mima lookup.ascii.99 set value "c"

data modify storage bookgames:mima lookup.ascii.100 set value "d"
data modify storage bookgames:mima lookup.ascii.101 set value "e"
data modify storage bookgames:mima lookup.ascii.102 set value "f"
data modify storage bookgames:mima lookup.ascii.103 set value "g"
data modify storage bookgames:mima lookup.ascii.104 set value "h"
data modify storage bookgames:mima lookup.ascii.105 set value "i"
data modify storage bookgames:mima lookup.ascii.106 set value "j"
data modify storage bookgames:mima lookup.ascii.107 set value "k"
data modify storage bookgames:mima lookup.ascii.108 set value "l"
data modify storage bookgames:mima lookup.ascii.109 set value "m"

data modify storage bookgames:mima lookup.ascii.110 set value "n"
data modify storage bookgames:mima lookup.ascii.111 set value "o"
data modify storage bookgames:mima lookup.ascii.112 set value "p"
data modify storage bookgames:mima lookup.ascii.113 set value "q"
data modify storage bookgames:mima lookup.ascii.114 set value "r"
data modify storage bookgames:mima lookup.ascii.115 set value "s"
data modify storage bookgames:mima lookup.ascii.116 set value "t"
data modify storage bookgames:mima lookup.ascii.117 set value "u"
data modify storage bookgames:mima lookup.ascii.118 set value "v"
data modify storage bookgames:mima lookup.ascii.119 set value "w"

data modify storage bookgames:mima lookup.ascii.120 set value "x"
data modify storage bookgames:mima lookup.ascii.121 set value "y"
data modify storage bookgames:mima lookup.ascii.122 set value "z"
data modify storage bookgames:mima lookup.ascii.123 set value "{"
data modify storage bookgames:mima lookup.ascii.124 set value "|"
data modify storage bookgames:mima lookup.ascii.125 set value "}"
data modify storage bookgames:mima lookup.ascii.126 set value "~"

#relog reload
scoreboard objectives add left minecraft.custom:minecraft.leave_game

#hex to dec
data modify storage bookgames:mima lookup.hex_to_dec.0 set value 0
data modify storage bookgames:mima lookup.hex_to_dec.1 set value 1
data modify storage bookgames:mima lookup.hex_to_dec.2 set value 2
data modify storage bookgames:mima lookup.hex_to_dec.3 set value 3
data modify storage bookgames:mima lookup.hex_to_dec.4 set value 4
data modify storage bookgames:mima lookup.hex_to_dec.5 set value 5
data modify storage bookgames:mima lookup.hex_to_dec.6 set value 6
data modify storage bookgames:mima lookup.hex_to_dec.7 set value 7
data modify storage bookgames:mima lookup.hex_to_dec.8 set value 8
data modify storage bookgames:mima lookup.hex_to_dec.9 set value 9
data modify storage bookgames:mima lookup.hex_to_dec.A set value 10
data modify storage bookgames:mima lookup.hex_to_dec.a set value 10
data modify storage bookgames:mima lookup.hex_to_dec.B set value 11
data modify storage bookgames:mima lookup.hex_to_dec.b set value 11
data modify storage bookgames:mima lookup.hex_to_dec.C set value 12
data modify storage bookgames:mima lookup.hex_to_dec.c set value 12
data modify storage bookgames:mima lookup.hex_to_dec.D set value 13
data modify storage bookgames:mima lookup.hex_to_dec.d set value 13
data modify storage bookgames:mima lookup.hex_to_dec.E set value 14
data modify storage bookgames:mima lookup.hex_to_dec.e set value 14
data modify storage bookgames:mima lookup.hex_to_dec.F set value 15
data modify storage bookgames:mima lookup.hex_to_dec.f set value 15
#dec to hex
data modify storage bookgames:mima lookup.dec_to_hex.0 set value 0
data modify storage bookgames:mima lookup.dec_to_hex.1 set value 1
data modify storage bookgames:mima lookup.dec_to_hex.2 set value 2
data modify storage bookgames:mima lookup.dec_to_hex.3 set value 3
data modify storage bookgames:mima lookup.dec_to_hex.4 set value 4
data modify storage bookgames:mima lookup.dec_to_hex.5 set value 5
data modify storage bookgames:mima lookup.dec_to_hex.6 set value 6
data modify storage bookgames:mima lookup.dec_to_hex.7 set value 7
data modify storage bookgames:mima lookup.dec_to_hex.8 set value 8
data modify storage bookgames:mima lookup.dec_to_hex.9 set value 9
data modify storage bookgames:mima lookup.dec_to_hex.10 set value "A"
data modify storage bookgames:mima lookup.dec_to_hex.11 set value "B"
data modify storage bookgames:mima lookup.dec_to_hex.12 set value "C"
data modify storage bookgames:mima lookup.dec_to_hex.13 set value "D"
data modify storage bookgames:mima lookup.dec_to_hex.14 set value "E"
data modify storage bookgames:mima lookup.dec_to_hex.15 set value "F"







