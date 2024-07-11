# source: rx.playerdb:admin/migrate_account/logic/found_acc
execute store result score $migrate.uid rx.temp run data get storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].uid
execute store result score $migrate.has_entry rx.temp run data get storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].has_entry
data modify storage rx.playerdb:temp admin.migrate.old_name set from storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].name
data remove storage rx.playerdb:main uuid[{selected: 1b}].entries[-1]
execute if score @s rx.pdb.has_entry matches 1.. run scoreboard players operation $in.uid rx.pdb.io = @s rx.uid
execute if score @s rx.pdb.has_entry matches 1.. run function #rx.playerdb:api/v2/select
execute if score @s rx.pdb.has_entry matches 1.. run data remove storage rx.playerdb:main players[{selected: 1b}]
scoreboard players operation @s rx.uid = $migrate.uid rx.temp
scoreboard players operation @s rx.pdb.has_entry = $migrate.has_entry rx.temp
execute if score @s rx.pdb.has_entry matches 1.. run function #rx.playerdb:api/v2/get/self
execute if score @s rx.pdb.has_entry matches 1.. run function rx.playerdb:impl/v2.0.0/utils/get_name
execute if score @s rx.pdb.has_entry matches 1.. run data modify storage rx.playerdb:main players[{selected: 1b}].info.UUID set from entity @s UUID
execute if score @s rx.pdb.has_entry matches 1.. run data modify storage rx.playerdb:main players[{selected: 1b}].info.name set from storage rx.playerdb:temp player_name
execute if score @s rx.pdb.has_entry matches 1.. run function rx.playerdb:impl/v2.0.0/uuid/select
scoreboard players operation $uid rx.temp = @s rx.uuid0
function #rx.playerdb:api/v2/uuid
execute store result storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].uid byte 1 run scoreboard players get @s rx.uid
execute store result storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].has_entry byte 1 run scoreboard players get @s rx.pdb.has_entry
tellraw @a[tag=rx.admin] ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"text": "Migration Success:", "color": "#1DF368"}, {"text": " "}, {"nbt": "admin.migrate.old_name", "storage": "rx.playerdb:temp", "color": "gold"}, {"text": "'s data was migrated to", "color": "#1DF368"}, {"text": " "}, {"selector": "@s", "color": "gold"}, {"text": "\n\n"}, {"text": "\u2192 Run ", "color": "gray"}, {"text": " "}, {"text": "/scoreboard players reset ", "color": "gold", "insertion": "/scoreboard players reset "}, {"text": " "}, {"text": "to complete the migration process!", "color": "gray"}]
tellraw @s ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"text": "Migration Success:", "color": "#1DF368"}, {"text": " "}, {"nbt": "admin.migrate.old_name", "storage": "rx.playerdb:temp", "color": "gold"}, {"text": "'s data was successfully migrated to you!", "color": "#1DF368"}]
function #rx.playerdb:api/v2/on_name_change
data remove storage rx.playerdb:temp admin.migrate
