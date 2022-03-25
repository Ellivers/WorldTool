# Called by worldtool:ui/return
# Starts the filter measuring process

scoreboard players operation #ID_temp worldtool = @s wt.ID

data modify storage worldtool:storage Processes append value {DisplayName:'{"nbt":"Translation.\\"process.filter_measure\\"","storage":"worldtool:storage"}',Id:"worldtool:filter_measure",Tags:["wt.process.filter_measure","wt.message.measure","wt.message.non_default"]}

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[-1].Tags append value "wt.process.filter_measure.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[-1].Tags append value "wt.process.filter_measure.exclude"
tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

function worldtool:process_start/common/load
