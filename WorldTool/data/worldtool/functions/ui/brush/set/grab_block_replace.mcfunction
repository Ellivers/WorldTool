tag @s remove grabbing_block
tag @s remove grabbing_block_replace
function worldtool:ui/clear_chat
tellraw @s [{"text":"Picked block "},{"nbt":"BlockGrab.Name","storage":"worldtool:storage"}]

function worldtool:ui/brush/give_brush.brushes

execute if entity @s[tag=replacebrush] run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.Replace set value "normal"
execute if entity @s[tag=replacebrush_reversed] run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.BrushSettings.Replace set value "exclude"

setblock ~2 255 ~ oak_sign{Text1:'{"nbt":"BlockGrab.Name","storage":"worldtool:storage","color":"gold","italic":false}'}
execute as @e[type=minecraft:item,sort=nearest,limit=1] run function worldtool:ui/brush/set/grab_block_replace.item
execute if entity @s[tag=replacebrush_reversed] run data modify entity @e[type=minecraft:item,sort=nearest,limit=1] Item.tag.display.Lore[6] set value '{"text":"Not replacing block:","color":"white","italic":false}'
clone ~1 255 ~ ~1 255 ~ ~2 255 ~
execute at @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=brush_grab_marker] run clone ~1 ~-1 ~ ~1 ~ ~ ~ ~-1 ~

tag @s remove replacebrush
tag @s remove replacebrush_reversed
kill @e[type=minecraft:arrow,tag=switch_block_brush,limit=1]
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = @p wt_ID run kill @s
replaceitem entity @s weapon.mainhand minecraft:air
