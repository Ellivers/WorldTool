execute if score $particles worldtool matches ..0 run tag @s add wt_toggling
execute if score $particles worldtool matches ..0 run scoreboard players set $particles worldtool 1
execute if entity @s[tag=!wt_toggling] if score $particles worldtool matches 1.. run scoreboard players set $particles worldtool 0
tag @s remove wt_toggling
execute if entity @s[tag=!placing_fill,tag=!rotating_clone,tag=!menu_nudge] run function worldtool:ui/options/settings
execute if entity @s[tag=placing_fill] run function worldtool:ui/select
execute if entity @s[tag=rotating_clone] run function worldtool:ui/clone_rotate/select
execute if entity @s[tag=menu_nudge] run function worldtool:ui/options/nudge/select
