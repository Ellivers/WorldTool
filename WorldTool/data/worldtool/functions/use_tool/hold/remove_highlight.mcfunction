# Called by worldtool:use_tool/hold/check
# Removes the highlighting entity and tag

tag @s remove wt.highlighting_block

tag @s remove wt.highlight_color.0
tag @s remove wt.highlight_color.1
tag @s remove wt.highlight_color.2

execute as @e[type=minecraft:shulker,tag=worldtool,tag=wt.highlight_entity] if score @s wt.ID = #ID_temp worldtool run function worldtool:use_tool/hold/remove_highlight.entity
