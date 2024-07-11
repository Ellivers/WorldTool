# source: rx.playerdb:impl/v2.0.0/select/tree/bit3
data modify storage rx.playerdb:main players[].bits.select set value 0b
scoreboard players operation $bit rx.temp = $uid rx.temp
scoreboard players operation $bit rx.temp %= $64 rx.int
scoreboard players set $size rx.temp 0
execute if score $bit rx.temp matches 0..7 run function rx.playerdb:impl/v2.0.0/select/tree/bit3/0_7
execute if score $bit rx.temp matches 8..15 run function rx.playerdb:impl/v2.0.0/select/tree/bit3/8_15
execute if score $bit rx.temp matches 16..23 run function rx.playerdb:impl/v2.0.0/select/tree/bit3/16_23
execute if score $bit rx.temp matches 24..31 run function rx.playerdb:impl/v2.0.0/select/tree/bit3/24_31
execute if score $bit rx.temp matches 32..39 run function rx.playerdb:impl/v2.0.0/select/tree/bit3/32_39
execute if score $bit rx.temp matches 40..47 run function rx.playerdb:impl/v2.0.0/select/tree/bit3/40_47
execute if score $bit rx.temp matches 48..55 run function rx.playerdb:impl/v2.0.0/select/tree/bit3/48_55
execute if score $bit rx.temp matches 56..63 run function rx.playerdb:impl/v2.0.0/select/tree/bit3/56_63
execute if data storage rx.playerdb:main players[{bits: {select: 0b}}] run data modify storage rx.playerdb:main players[{bits: {select: 0b}}].selected set value 0b
scoreboard players operation $uid rx.temp /= $64 rx.int
execute if score $size rx.temp matches 2.. run function rx.playerdb:impl/v2.0.0/select/tree/bit4
