# Called by worldtool:process_end/load
# Displays how many blocks were affected by the process

tag @s add wt.message.default
execute if data storage worldtool:storage {Temp:{Tags:["wt.message.non_default"]}} run tag @s remove wt.message.default

function #worldtool:addon/process_message/display

execute if entity @s[tag=wt.message.default] if score #blocksPlaced worldtool matches 1 run tellraw @s {"nbt":"Translation.\"info.affected_block\"","storage": "worldtool:storage"}
execute if entity @s[tag=wt.message.default] unless score #blocksPlaced worldtool matches 1 run tellraw @s {"nbt":"Translation.\"info.affected_blocks\"","storage": "worldtool:storage","interpret": true}
execute if data storage worldtool:storage {Temp:{Tags:["wt.message.measure"]}} run tellraw @s {"nbt":"Translation.\"info.measure.filter\"","storage": "worldtool:storage","interpret": true}

function #worldtool:addon/process_message/remove_tags

tag @s remove wt.message.default
tag @s remove wt.message.non_default
tag @s remove wt.message.measure
