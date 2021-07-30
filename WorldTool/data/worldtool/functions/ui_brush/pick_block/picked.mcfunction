# Called by worldtool:pick_block/other/finish

execute if entity @s[tag=wt.pick_block.secondary] run data modify storage worldtool:storage Temp.SecondaryBlock set from storage worldtool:storage Temp.Block
execute if entity @s[tag=wt.pick_block.secondary] run data remove storage worldtool:storage Temp.Block

execute if entity @s[tag=!wt.pick_block.secondary] run item modify entity @s weapon.mainhand worldtool:brush_tool/set_block
execute if entity @s[tag=wt.pick_block.secondary] run item modify entity @s weapon.mainhand worldtool:brush_tool/set_secondary_block
tellraw @s {"nbt":"Translation.\"info.picked_block\"","storage": "worldtool:storage","interpret": true}
execute if score $playUISounds worldtool matches 1.. at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5

tag @s remove wt.pick_block.brush
tag @s remove wt.pick_block.secondary

function worldtool:ui_brush/main
