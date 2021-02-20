tag @s remove grabbing_block
tag @s remove grabbing_block_gentool
function worldtool:ui_general/clear_chat
tellraw @s [{"text":"Picked block "},{"nbt":"BlockGrab.Name","storage":"worldtool:storage"}]

loot spawn ~ ~ ~ loot worldtool:generation_tool

setblock ~2 255 ~ oak_sign{Text1:'{"nbt":"BlockGrab.Name","storage":"worldtool:storage","color":"light_purple","italic":false}'}
execute as @e[type=minecraft:item,sort=nearest,limit=1] run function worldtool:ui_shapes/select/grab_block.item
clone ~1 255 ~ ~1 255 ~ ~2 255 ~
execute at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brush_grab_marker] run clone ~1 ~-1 ~ ~1 ~ ~ ~ ~-1 ~

scoreboard players operation #ID_temp worldtool = @s wt_ID
kill @e[type=minecraft:arrow,tag=switch_block_brush,limit=1]
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool run kill @s
replaceitem entity @s weapon.mainhand minecraft:air
scoreboard players set @s wt_drop_coas 1
tag @s add wt_tick_gentool_menu
schedule function worldtool:ui_shapes/tick_menu 1t
