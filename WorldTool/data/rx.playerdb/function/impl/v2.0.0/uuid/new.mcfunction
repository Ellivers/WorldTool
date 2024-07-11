# source: rx.playerdb:impl/v2.0.0/uuid/new
execute store result score $selected rx.temp if data storage rx.playerdb:main uuid[{selected: 1b}]
execute if score $selected rx.temp matches 0 run scoreboard players operation $uid rx.temp = @s rx.uuid0
execute if score $selected rx.temp matches 0 run function rx.playerdb:impl/v2.0.0/utils/uid_to_bits
execute if score $selected rx.temp matches 0 run data modify storage rx.playerdb:main uuid append value {selected: 1b}
execute if score $selected rx.temp matches 0 run data modify storage rx.playerdb:main uuid[-1].bits set from storage rx.playerdb:temp bits
execute if score $selected rx.temp matches 0 store result storage rx.playerdb:main uuid[-1].bits.uuid0 int 1 run scoreboard players get @s rx.uuid0
function rx.playerdb:impl/v2.0.0/utils/get_name
data modify storage rx.playerdb:main uuid[{selected: 1b}].entries append value {}
execute store result storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].uid int 1 run scoreboard players get @s rx.uid
execute store result storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].has_entry byte 1 run scoreboard players get @s rx.pdb.has_entry
data modify storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].name set from storage rx.playerdb:temp player_name
data modify storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].UUID set from storage rx.playerdb:temp UUID
