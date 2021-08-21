tag @s remove grabbing_block
function worldtool:ui/clear_chat
tellraw @s [{"text":"Picked block "},{"nbt":"BlockGrab.Name","storage":"worldtool:storage"}]

function worldtool:ui/tool_brush/give_brush.brushes
execute unless data entity @s SelectedItem.tag.Brush run loot spawn ~ ~ ~ loot worldtool:brushes/none

setblock ~2 255 ~ oak_sign{Text1:'{"nbt":"BlockGrab.Name","storage":"worldtool:storage","color":"light_purple","italic":false}'}
execute as @e[type=minecraft:item,sort=nearest,limit=1] run function worldtool:ui/tool_brush/set/grab_block.item
clone ~1 255 ~ ~1 255 ~ ~2 255 ~
execute at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brush_grab_marker] run clone ~1 ~-1 ~ ~1 ~ ~ ~ ~-1 ~

scoreboard players operation #ID_temp worldtool = @s wt_ID
kill @e[type=minecraft:arrow,tag=switch_block_brush,limit=1]
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool run kill @s
item replace entity @s weapon.mainhand with minecraft:air
