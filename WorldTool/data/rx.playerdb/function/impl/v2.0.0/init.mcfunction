# source: rx.playerdb:impl/v2.0.0/init
data modify storage rx:info playerdb.name set value "PlayerDB"
data modify storage rx:info playerdb.pretty_name set value '{"extra": [{"color": "#dd9b14", "text": "P"}, {"color": "#e28e10", "text": "l"}, {"color": "#e67f0b", "text": "a"}, {"color": "#eb6f07", "text": "y"}, {"color": "#eb6f07", "text": "e"}, {"color": "#e67f0b", "text": "r"}, {"color": "#e28e10", "text": "D"}, {"color": "#dd9b14", "text": "B"}], "text": ""}'
scoreboard players set rx.playerdb load.status 1
scoreboard objectives add rx.temp dummy
function rx.playerdb:impl/v2.0.0/upgrade
data modify storage rx:info playerdb.version set value {major: 2, minor: 0, patch: 0}
data modify storage rx:info playerdb.pretty_version set value '[{"storage": "rx:info", "nbt": "playerdb.version.major"}, ".", {"storage": "rx:info", "nbt": "playerdb.version.minor"}, ".", {"storage": "rx:info", "nbt": "playerdb.version.patch"}]'
scoreboard objectives add rx.uid dummy
scoreboard objectives add rx.int dummy
scoreboard objectives add rx.pdb.io dummy
scoreboard objectives add rx.pdb.list_page dummy
scoreboard objectives add rx.pdb.has_entry dummy
scoreboard objectives add rx.pdb.list trigger
scoreboard objectives add rx.pdb.counter dummy
scoreboard objectives add rx.uuid0 dummy
scoreboard objectives add rx.uuid1 dummy
scoreboard objectives add rx.uuid2 dummy
scoreboard objectives add rx.uuid3 dummy
execute unless score $uid.next rx.uid matches -2147483648.. run scoreboard players set $uid.next rx.uid 1
scoreboard players set $global rx.pdb.counter 0
scoreboard players set $2 rx.int 2
scoreboard players set $3 rx.int 3
scoreboard players set $16 rx.int 16
scoreboard players set $19 rx.int 19
scoreboard players set $64 rx.int 64
scoreboard players set $256 rx.int 256
schedule function rx.playerdb:impl/v2.0.0/tick 1 replace
forceload remove -30000000 1600
forceload add -30000000 1600
execute unless block -30000000 0 1602 minecraft:yellow_shulker_box run setblock -30000000 0 1602 minecraft:yellow_shulker_box
execute unless block -30000000 0 1603 minecraft:oak_wall_sign run setblock -30000000 0 1603 minecraft:oak_wall_sign[facing=south]
fill -30000000 1 1600 -30000000 1 1615 minecraft:bedrock
tellraw @a[tag=rx.admin] ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"storage": "rx:info", "nbt": "playerdb.pretty_version", "interpret": true, "color": "gray"}, {"text": " "}, {"text": "loaded", "color": "gray"}]
