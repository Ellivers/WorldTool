scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @a if score @s wt_ID = #ID_temp worldtool run tag @s add setting_brush_block
setblock ~ 254 ~ minecraft:stone
clone ~ ~ ~ ~ ~ ~ ~ 255 ~ replace move
execute positioned ~ 256 ~ align xyz run summon minecraft:arrow ~.5 ~ ~.5 {Tags:[switch_block_brush,worldtool],Motion:[0d,-1d,0d]}
summon minecraft:area_effect_cloud ~ 255 ~ {Age: -2147483648, Duration: 2, WaitTime: -2147483648, Tags: ["brush_grab_marker","worldtool"]}
schedule function worldtool:ui_brush/set/set_block.tick 2t