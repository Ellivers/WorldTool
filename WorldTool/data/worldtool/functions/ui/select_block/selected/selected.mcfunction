# Called by worldtool:input_check/player and worldtool:ui/select_block/selected.air
# Sets the block to what you selected

execute if entity @s[tag=wt.replace.normal,predicate=worldtool:tools/brush] run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/replace/normal
execute if entity @s[tag=wt.replace.exclude,predicate=worldtool:tools/brush] run item modify entity @s weapon.mainhand worldtool:brush_tool/settings/replace/exclude
execute if entity @s[tag=wt.replace.normal,predicate=worldtool:tools/shapes] run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/replace/normal
execute if entity @s[tag=wt.replace.exclude,predicate=worldtool:tools/shapes] run item modify entity @s weapon.mainhand worldtool:shape_tool/settings/replace/exclude

execute if entity @s[tag=!wt.select_block.other.replace,predicate=worldtool:tools/brush] run item modify entity @s weapon.mainhand worldtool:brush_tool/set_primary_block
execute if entity @s[tag=wt.select_block.other.replace,predicate=worldtool:tools/brush] run item modify entity @s weapon.mainhand worldtool:set_secondary_block
execute if entity @s[tag=!wt.select_block.other.replace,predicate=worldtool:tools/shapes] run item modify entity @s weapon.mainhand worldtool:shape_tool/set_primary_block
execute if entity @s[tag=wt.select_block.other.replace,predicate=worldtool:tools/shapes] run item modify entity @s weapon.mainhand worldtool:set_secondary_block

function #worldtool:addon/ui/block_selected

function worldtool:ui/sound.change_item

tag @s remove wt.allow_input
tag @s remove wt.select_block.other
tag @s remove wt.select_block.other.replace

tag @s remove wt.replace.normal
tag @s remove wt.replace.exclude

function worldtool:ui/return

tellraw @s [{"nbt":"Translation.\"info.selected_block\"","storage": "worldtool:storage"},{"nbt":"Temp.Block.State.Name","storage": "worldtool:storage","color": "green"}]
