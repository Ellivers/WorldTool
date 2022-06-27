# Called by worldtool:input_check/player and worldtool:ui_brush/select_block/selected.air
# Sets the block to what you selected

execute if entity @s[tag=wt.brush.replace.normal] run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/replace/normal
execute if entity @s[tag=wt.brush.replace.exclude] run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/replace/exclude

execute if entity @s[tag=!wt.select_block.brush.replace] run item modify entity @s weapon.mainhand worldtool:brush_tool/set_primary_block
execute if entity @s[tag=wt.select_block.brush.replace] run item modify entity @s weapon.mainhand worldtool:set_secondary_block
function worldtool:ui/sound.change_item

tag @s remove wt.allow_input
tag @s remove wt.select_block.brush
tag @s remove wt.select_block.brush.replace

tag @s remove wt.brush.replace.normal
tag @s remove wt.brush.replace.exclude

function worldtool:ui_brush/menu

tellraw @s [{"nbt":"Translation.\"info.selected_block\"","storage": "worldtool:storage"},{"nbt":"Temp.Block.State.Name","storage": "worldtool:storage","color": "green"}]
