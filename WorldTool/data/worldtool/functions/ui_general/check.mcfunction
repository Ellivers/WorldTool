tag @s[tag=!wt_user] add wt_outline_selection
tag @s add wt_user
# Give both positions belonging to the executing player a tag to be able to select them
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s add pos1_found
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = #ID_temp worldtool run tag @s add pos2_found

execute if entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1_found] if entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2_found] run function worldtool:ui_general/menus/page1

# If the menu isn't open (AKA both positions aren't there)
execute unless entity @s[tag=wt_in_menu] run function worldtool:ui_general/errors/pos_missing

# Get how many of each position the executing player has
execute store result score #pos1Count worldtool run execute if entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1_found]
execute if score #pos1Count worldtool matches 2.. run function worldtool:ui_general/errors/too_many_pos1

execute store result score #pos2Count worldtool run execute if entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2_found]
execute if score #pos2Count worldtool matches 2.. run function worldtool:ui_general/errors/too_many_pos2

tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1_found] remove pos1_found
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2_found] remove pos2_found
