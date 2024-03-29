# Called by worldtool:input_check/player and worldtool:ui/select_block/selected/air
# Sets the block to what you selected

execute if entity @s[tag=!wt.replace.editable] run function worldtool:ui/select_block/replace/apply_mode

execute if entity @s[tag=!wt.select_block.other.replace,predicate=worldtool:tools/brush] run item modify entity @s weapon.mainhand worldtool:brush_tool/set_primary_block
execute if entity @s[tag=wt.select_block.other.replace,predicate=worldtool:tools/brush] run item modify entity @s weapon.mainhand worldtool:set_secondary_block
execute if predicate worldtool:tools/brush run function worldtool:ui_brush/set_tooltip
execute if entity @s[tag=!wt.select_block.other.replace,predicate=worldtool:tools/shapes] run item modify entity @s weapon.mainhand worldtool:shape_tool/set_primary_block
execute if entity @s[tag=wt.select_block.other.replace,predicate=worldtool:tools/shapes] run item modify entity @s weapon.mainhand worldtool:set_secondary_block
execute if predicate worldtool:tools/shapes run function worldtool:ui_shapes/set_tooltip

function #worldtool:hooks/ui/block_selected

function worldtool:ui/sound.change_item

tag @s remove wt.allow_input
tag @s remove wt.select_block.other
tag @s remove wt.select_block.other.replace

function worldtool:ui/remove_return_tags

function worldtool:ui/return

tellraw @s [{"nbt":"Translation.\"info.selected_block\"","storage": "worldtool:storage"},{"nbt":"Temp.Block.State.Name","storage": "worldtool:storage","color": "green"}]
