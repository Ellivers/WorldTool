# source: rx.playerdb:impl/v2.0.0/uuid/select
scoreboard players set $found rx.temp 0
execute store result score $uid rx.temp run data get storage rx.playerdb:temp UUID[0]
execute if data storage rx.playerdb:main uuid[] run data modify storage rx.playerdb:main uuid[].selected set value 1b
execute if data storage rx.playerdb:main uuid[] run function rx.playerdb:impl/v2.0.0/uuid/tree/bit0
execute if data storage rx.playerdb:main uuid[{selected: 1b}] store result score $loop rx.temp if data storage rx.playerdb:main uuid[{selected: 1b}].entries[]
execute if data storage rx.playerdb:main uuid[{selected: 1b}] run function rx.playerdb:impl/v2.0.0/uuid/iter
