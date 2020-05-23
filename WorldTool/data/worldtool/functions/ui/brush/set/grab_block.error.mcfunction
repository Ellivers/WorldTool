function worldtool:ui/cancel
kill @e[type=minecraft:arrow,tag=switch_block_brush]
tellraw @s {"text":"\n\nCouldn't pick this block. Either it's not solid or something went wrong.","color":"red"}