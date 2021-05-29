# Called by worldtool:process_end/load
# Displays how many blocks were affected by the process

tag @s add wt.message.default

function #worldtool:addon/process_message/add_tags

execute if entity @s[tag=wt.message.default] run tellraw @s {"nbt":"Translation.\"info.affected_blocks\"","storage": "worldtool:storage","interpret": true}

function #worldtool:addon/process_message/remove_tags

tag @s remove wt.message.default
