# source: rx.playerdb:impl/v2.0.0/uuid/check
data modify storage rx.playerdb:temp UUID set from entity @s UUID
execute store result score $uuid0 rx.temp run data get storage rx.playerdb:temp UUID[0]
execute store result score $uuid1 rx.temp run data get storage rx.playerdb:temp UUID[1]
execute store result score $uuid2 rx.temp run data get storage rx.playerdb:temp UUID[2]
execute store result score $uuid3 rx.temp run data get storage rx.playerdb:temp UUID[3]
scoreboard players operation $uid rx.temp = @s rx.uuid0
function rx.playerdb:impl/v2.0.0/uuid/select
function rx.playerdb:impl/v2.0.0/utils/get_name
execute unless data storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].name run data modify storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].name set from storage rx.playerdb:temp player_name
scoreboard players set $success rx.temp 0
execute if score $uuid0 rx.temp = @s rx.uuid0 if score $uuid1 rx.temp = @s rx.uuid1 if score $uuid2 rx.temp = @s rx.uuid2 if score $uuid3 rx.temp = @s rx.uuid3 run scoreboard players set $success rx.temp 1
execute if score $success rx.temp matches 1 run data modify storage rx.playerdb:temp name_cache set from storage rx.playerdb:temp player_name
execute if score $success rx.temp matches 1 store result score $copy rx.temp run data modify storage rx.playerdb:temp name_cache set from storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].name
execute if score $success rx.temp matches 1 if score $copy rx.temp matches 1 run scoreboard players set $success rx.temp 0
execute if score $success rx.temp matches 0 run function rx.playerdb:impl/v2.0.0/uuid/check/resets
scoreboard players reset @s rx.pdb.counter
