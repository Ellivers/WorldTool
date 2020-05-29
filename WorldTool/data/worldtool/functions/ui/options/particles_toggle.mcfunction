execute if score $particles worldtool matches ..0 run tag @s add settingparticles
execute if score $particles worldtool matches ..0 run scoreboard players set $particles worldtool 1
execute if entity @s[tag=!settingparticles] if score $particles worldtool matches 1.. run scoreboard players set $particles worldtool 0
tag @s remove settingparticles
function worldtool:ui/options/settings