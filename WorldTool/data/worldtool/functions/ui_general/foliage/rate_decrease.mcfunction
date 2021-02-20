execute if score @s wt_chance matches 5..10 run scoreboard players remove @s wt_chance 5
execute if score @s wt_chance matches 25 run scoreboard players remove @s wt_chance 15
execute unless score @s wt_chance matches ..0 unless score @s wt_chance matches 5..25 run scoreboard players remove @s wt_chance 25
function worldtool:ui_general/foliage/select