# source: rx.playerdb:impl/v2.0.0/uuid/iter
data modify storage rx.playerdb:temp UUIDTest set from storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].UUID
execute store success score $check rx.temp run data modify storage rx.playerdb:temp UUIDTest set from storage rx.playerdb:temp UUID
execute unless score $check rx.temp matches 0 run data modify storage rx.playerdb:main uuid[{selected: 1b}].entries insert 0 from storage rx.playerdb:main uuid[{selected: 1b}].entries[-1]
execute unless score $check rx.temp matches 0 run data remove storage rx.playerdb:main uuid[{selected: 1b}].entries[-1]
execute if score $check rx.temp matches 0 run scoreboard players set $found rx.temp 1
scoreboard players remove $loop rx.temp 1
execute if score $loop rx.temp matches 1.. unless score $check rx.temp matches 0 run function rx.playerdb:impl/v2.0.0/uuid/iter
