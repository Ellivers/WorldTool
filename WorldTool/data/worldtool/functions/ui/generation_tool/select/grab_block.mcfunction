tag @s remove grabbing_block
tag @s remove grabbing_block_gentool
function worldtool:ui/clear_chat
tellraw @s [{"text":"Picked block "},{"nbt":"BlockGrab.Name","storage":"worldtool:storage"}]

loot spawn ~ ~ ~ loot worldtool:generation_tool

setblock ~2 255 ~ oak_sign{Text1:'{"nbt":"BlockGrab.Name","storage":"worldtool:storage","color":"light_purple","italic":false}'}
execute as @e[type=minecraft:item,sort=nearest,limit=1] run function worldtool:ui/generation_tool/select/grab_block.item
clone ~1 255 ~ ~1 255 ~ ~2 255 ~
execute at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brush_grab_marker] run clone ~1 ~-1 ~ ~1 ~ ~ ~ ~-1 ~

kill @e[type=minecraft:arrow,tag=switch_block_brush,limit=1]
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = @p wt_ID run kill @s
replaceitem entity @s weapon.mainhand minecraft:air
scoreboard players set @s wt_drop_coas 1
