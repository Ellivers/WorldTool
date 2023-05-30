# Called by worldtool:use_tool/click/ray_hit/load
# Selects the block the user is looking at

scoreboard players set #success worldtool 1

scoreboard players operation #ID_temp worldtool = @s wt.ID

clone ~ ~ ~ ~ ~ ~ 27451 3 19

execute if entity @s[tag=!wt.pick_block.primary,tag=!wt.pick_block.secondary] as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:pick_block/general_tool/auto
execute if entity @s[tag=wt.pick_block.primary] as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run clone 27451 3 19 27451 3 19 ~1 ~ ~ replace move
execute if entity @s[tag=wt.pick_block.secondary] as @e[type=minecraft:marker,tag=worldtool,tag=wt.input] if score @s wt.ID = #ID_temp worldtool at @s run clone 27451 3 19 27451 3 19 ~-1 ~ ~ replace move

tag @s remove wt.pick_block.primary
tag @s remove wt.pick_block.secondary

function worldtool:ui_general/reset_tool

function worldtool:ui/sound.change_item
