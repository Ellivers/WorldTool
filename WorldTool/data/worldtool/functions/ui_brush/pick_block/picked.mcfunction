# Called by worldtool:pick_block/other/finish

execute if entity @s[tag=wt.pick_block.replace] run data modify storage worldtool:storage Temp.Item.tag.WorldTool.ReplaceBlock set from storage worldtool:storage Temp.Item.tag.WorldTool.Block
execute if entity @s[tag=wt.pick_block.replace] run data remove storage worldtool:storage Temp.Item.tag.WorldTool.Block

function #worldtool:addon/ui_brush/pick_block

tag @s remove wt.pick_block.brush
tag @s remove wt.pick_block.replace

item modify entity @s weapon.mainhand worldtool:copy_nbt
tellraw @s {"nbt":"Translation.\"info.picked_block\"","storage": "worldtool:storage","interpret": true}
execute if score $playUISounds worldtool matches 1.. at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5

function worldtool:ui_brush/main
