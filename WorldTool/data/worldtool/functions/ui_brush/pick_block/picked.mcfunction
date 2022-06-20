# Called by worldtool:pick_block/other/finish


execute if entity @s[tag=!wt.pick_block.secondary] run item modify entity @s weapon.mainhand worldtool:brush_tool/set_primary_block
execute if entity @s[tag=wt.pick_block.secondary] run item modify entity @s weapon.mainhand worldtool:set_secondary_block

tellraw @s {"nbt":"Translation.\"info.picked_block\"","storage": "worldtool:storage","interpret": true}
function worldtool:ui/sound.change_item

tag @s remove wt.pick_block.brush
tag @s remove wt.pick_block.secondary

function worldtool:ui_brush/menu
