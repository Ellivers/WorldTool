function worldtool:ui/clear_chat
function worldtool:ui/tool_brush/give_brush.brushes

setblock ~2 255 ~ oak_sign{Text1:'{"nbt":"Item.tag.Structure","entity":"@e[type=minecraft:item,tag=wt_set_structure,limit=1]","color":"light_purple","italic":false}'}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},sort=nearest,limit=1] run function worldtool:ui/tool_brush/set/structure.item
clone ~1 255 ~ ~1 255 ~ ~2 255 ~

kill @e[type=minecraft:item,tag=wt_set_structure,sort=nearest,limit=1]
replaceitem entity @s weapon.mainhand minecraft:air
tag @s remove check_brush_structure