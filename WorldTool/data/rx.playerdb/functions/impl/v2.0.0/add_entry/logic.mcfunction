# source: rx.playerdb:impl/v2.0.0/add_entry/logic
execute if data storage rx.playerdb:main players[] run data modify storage rx.playerdb:main players[].selected set value 0b
function rx.playerdb:impl/v2.0.0/utils/get_name
data modify storage rx.playerdb:main players append value {}
execute store result storage rx.playerdb:main players[-1].info.uid int 1 run scoreboard players get @s rx.uid
data modify storage rx.playerdb:main players[-1].info.name set from storage rx.playerdb:temp player_name
data modify storage rx.playerdb:main players[-1].info.UUID set from entity @s UUID
data modify storage rx.playerdb:main players[-1].data set value {}
data modify storage rx.playerdb:main players[-1].selected set value 1b
scoreboard players operation $uid rx.temp = @s rx.uid
function rx.playerdb:impl/v2.0.0/utils/uid_to_bits
data modify storage rx.playerdb:main players[-1].bits set from storage rx.playerdb:temp bits
data modify storage rx.playerdb:temp UUID set from storage rx.playerdb:main players[-1].info.UUID
function rx.playerdb:impl/v2.0.0/uuid/select
data modify storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].has_entry set value 1b
scoreboard players set @s rx.pdb.has_entry 1
data modify storage rx.playerdb:io player set from storage rx.playerdb:main players[{selected: 1b}]
scoreboard players set $disable.api rx.temp 1
function #rx.playerdb:api/v2/on_entry_add
scoreboard players reset $disable.api rx.temp
data modify storage rx.playerdb:main players[{selected: 1b}].data set from storage rx.playerdb:io player.data
