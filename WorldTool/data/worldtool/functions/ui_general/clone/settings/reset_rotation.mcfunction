# Called by worldtool:ui_general/clone/rotation_menu/menu
# Resets all rotation settings to their default values

scoreboard players set @s wt.rotX 0
scoreboard players set @s wt.rotY 0
scoreboard players set @s wt.rotZ 0
tag @s remove wt.clone.mirror.x
tag @s remove wt.clone.mirror.y
tag @s remove wt.clone.mirror.z
tag @s remove wt.clone.rotate
