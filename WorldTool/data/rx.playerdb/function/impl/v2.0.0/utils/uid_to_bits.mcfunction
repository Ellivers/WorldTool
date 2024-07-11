# source: rx.playerdb:impl/v2.0.0/utils/uid_to_bits
scoreboard players operation $bit rx.temp = $uid rx.temp
execute store result storage rx.playerdb:temp bits.b0 byte 1 run scoreboard players operation $bit rx.temp %= $64 rx.int
scoreboard players operation $uid rx.temp /= $64 rx.int
scoreboard players operation $bit rx.temp = $uid rx.temp
execute store result storage rx.playerdb:temp bits.b1 byte 1 run scoreboard players operation $bit rx.temp %= $64 rx.int
scoreboard players operation $uid rx.temp /= $64 rx.int
scoreboard players operation $bit rx.temp = $uid rx.temp
execute store result storage rx.playerdb:temp bits.b2 byte 1 run scoreboard players operation $bit rx.temp %= $64 rx.int
scoreboard players operation $uid rx.temp /= $64 rx.int
scoreboard players operation $bit rx.temp = $uid rx.temp
execute store result storage rx.playerdb:temp bits.b3 byte 1 run scoreboard players operation $bit rx.temp %= $64 rx.int
scoreboard players operation $uid rx.temp /= $64 rx.int
scoreboard players operation $bit rx.temp = $uid rx.temp
execute store result storage rx.playerdb:temp bits.b4 byte 1 run scoreboard players operation $bit rx.temp %= $64 rx.int
scoreboard players operation $uid rx.temp /= $64 rx.int
scoreboard players operation $bit rx.temp = $uid rx.temp
execute store result storage rx.playerdb:temp bits.b5 byte 1 run scoreboard players operation $bit rx.temp %= $64 rx.int
