# source: rx.playerdb:impl/v2.0.0/uuid/update
execute store result score $cache.uid rx.temp run data get storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].uid
execute store result score $cache.has_entry rx.temp run data get storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].has_entry
scoreboard players operation @s rx.uid = $cache.uid rx.temp
scoreboard players operation @s rx.pdb.has_entry = $cache.has_entry rx.temp
data modify storage rx.playerdb:io old_name set from storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].name
execute if score @s rx.pdb.has_entry matches 1 run function rx.playerdb:impl/v2.0.0/get/self
execute if score @s rx.pdb.has_entry matches 1 run function rx.playerdb:impl/v2.0.0/utils/get_name
execute if score @s rx.pdb.has_entry matches 1 run data modify storage rx.playerdb:main players[{selected: 1b}].info.name set from storage rx.playerdb:temp player_name
execute if score @s rx.pdb.has_entry matches 1 run function rx.playerdb:impl/v2.0.0/save/self
data modify storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].name set from storage rx.playerdb:temp player_name
tellraw @a[tag=rx.admin] ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"nbt": "old_name", "storage": "rx.playerdb:io", "color": "gold"}, {"text": " "}, {"text": "has changed their name to", "color": "#1DF368"}, {"text": " "}, {"selector": "@s", "color": "gold"}]
execute if score @s rx.pdb.has_entry matches 1 run data modify storage rx.playerdb:io player set from storage rx.playerdb:main players[{selected: 1b}]
function #rx.playerdb:api/v2/on_name_change
execute if score @s rx.pdb.has_entry matches 1 run data modify storage rx.playerdb:main players[{selected: 1b}].data set from storage rx.playerdb:io player.data
scoreboard players operation @s rx.uid = $cache.uid rx.temp
scoreboard players operation @s rx.pdb.has_entry = $cache.has_entry rx.temp
