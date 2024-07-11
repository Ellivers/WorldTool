# source: rx.playerdb:impl/v2.0.0/upgrade/v1tov2/player
execute if score @s rx.pdb.HasEntry matches 0.. run scoreboard players operation @s rx.pdb.has_entry = @s rx.pdb.HasEntry
data modify storage rx.playerdb:temp UUID set from entity @s UUID
function rx.playerdb:impl/v2.0.0/uuid/select
execute store result storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].has_entry byte 1 run scoreboard players get @s rx.pdb.has_entry
data remove storage rx.playerdb:main uuid[{selected: 1b}].entries[-1].hasEntry
scoreboard players reset @s rx.pdb.HasEntry
tellraw @a[tag=rx.admin] ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"text": "Upgrade Success: Your data has been safely transfered :)", "color": "#1DF368"}]
