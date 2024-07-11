# Called by worldtool:ui_general/shatter/menu
# Toggles dropping items from destroyed blocks

scoreboard players set #success worldtool 1

tag @s[tag=wt.shatter.drop_items] add wt.temp
tag @s[tag=wt.temp] remove wt.shatter.drop_items
execute store result score #temp worldtool run gamerule doTileDrops
execute if entity @s[tag=!wt.temp] if score #temp worldtool matches 0 run function worldtool:ui_general/shatter/tile_drops_error/display
tag @s[tag=!wt.temp] add wt.shatter.drop_items

tag @s remove wt.temp

execute if score #success worldtool matches 1 run function worldtool:ui_general/shatter/menu
