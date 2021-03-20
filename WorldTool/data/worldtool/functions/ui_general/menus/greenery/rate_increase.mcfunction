execute unless score @s wt_chance matches 100.. unless score @s wt_chance matches 0..10 run scoreboard players add @s wt_chance 25
execute if score @s wt_chance matches 10 run scoreboard players add @s wt_chance 15
execute if score @s wt_chance matches 0..5 run scoreboard players add @s wt_chance 5
function worldtool:ui_general/menus/greenery/select