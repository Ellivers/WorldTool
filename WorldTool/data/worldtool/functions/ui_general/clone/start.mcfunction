# Called by worldtool:ui_general/clone/select_destination/selected, worldtool:ui_general/clone/menu and worldtool:ui_general/clone/start_rotated
# Starts the cloning process

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.clone\\"","storage":"worldtool:storage"}',Id:"worldtool:clone",Tags:["wt.process.clone","wt.from_bottom","wt.message.clone","wt.message.non_default"]}

execute if entity @s[tag=!wt.clone.rotate] run data modify storage worldtool:storage Processes[-1].Tags append value "wt.process.clone.normal"
execute if entity @s[tag=wt.clone.rotate] run data modify storage worldtool:storage Processes[-1].Tags append value "wt.process.clone.rotate"

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[-1].Tags append value "wt.process.clone.filter.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[-1].Tags append value "wt.process.clone.filter.exclude"
tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

function worldtool:process_start/common/load
