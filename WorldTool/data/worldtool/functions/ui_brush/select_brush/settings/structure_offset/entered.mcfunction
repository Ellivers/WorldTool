function worldtool:ui_general/clear_chat
function worldtool:ui_brush/give_brush.brushes

data modify entity @e[type=minecraft:item,tag=!wt_set_structure_offset,sort=nearest,limit=1] Item.tag.BrushSettings.StructureOffset.X set from entity @e[type=minecraft:item,tag=wt_set_structure_offset,sort=nearest,limit=1] Item.tag.OffsetX
data modify entity @e[type=minecraft:item,tag=!wt_set_structure_offset,sort=nearest,limit=1] Item.tag.BrushSettings.StructureOffset.Y set from entity @e[type=minecraft:item,tag=wt_set_structure_offset,sort=nearest,limit=1] Item.tag.OffsetY
data modify entity @e[type=minecraft:item,tag=!wt_set_structure_offset,sort=nearest,limit=1] Item.tag.BrushSettings.StructureOffset.Z set from entity @e[type=minecraft:item,tag=wt_set_structure_offset,sort=nearest,limit=1] Item.tag.OffsetZ

replaceitem entity @s weapon.mainhand minecraft:air

kill @e[type=minecraft:item,tag=wt_set_structure_offset,sort=nearest,limit=1]
data modify entity @e[type=minecraft:item,tag=!wt_set_structure_offset,sort=nearest,limit=1] PickupDelay set value 0s