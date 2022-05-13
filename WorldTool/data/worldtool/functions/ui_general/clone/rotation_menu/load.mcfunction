# Called by worldtool:ui_general/clone/menu
# Summons the preview armor stand and opens the rotation menu

scoreboard players operation #ID_temp worldtool = @s wt.ID

summon minecraft:armor_stand ^ ^-.5 ^1.5 {Invisible:1b,Tags:["worldtool","wt.particles","wt.rotation_preview"],Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:observer",Count:1b}],Pose:{Head:[0f,1f,0f]}}
execute positioned ^ ^-.5 ^1.5 run scoreboard players operation @e[type=minecraft:armor_stand,tag=worldtool,tag=wt.rotation_preview,sort=nearest,limit=1] wt.ID = #ID_temp worldtool

function worldtool:ui_general/clone/rotation_menu/menu
