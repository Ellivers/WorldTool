tag @s add wt_brush_drop_redirect.structure_offset
function worldtool:ui/tool_brush/give_brush

execute store result score #temp_struc_offsetZ worldtool run data get entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.StructureOffset.Z
scoreboard players remove #temp_struc_offsetZ worldtool 1
execute store result entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.StructureOffset.Z int 1 run scoreboard players get #temp_struc_offsetZ worldtool

replaceitem entity @s weapon.mainhand minecraft:air

data modify entity @e[type=minecraft:item,sort=nearest,limit=1] PickupDelay set value 0s
function worldtool:ui/tool_brush/select