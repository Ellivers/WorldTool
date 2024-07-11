# Called by worldtool:ui_general/clone/get_rotation_offset/load and worldtool:process_start/general/setup_process/clone/standard
# Gets the selected rotation and mirroring

scoreboard players operation #tempRotX worldtool = @s wt.rotX
scoreboard players operation #tempRotY worldtool = @s wt.rotY
scoreboard players operation #tempRotZ worldtool = @s wt.rotZ

execute store success score #mirrorX worldtool if entity @s[tag=wt.clone.mirror.x]
execute store success score #mirrorY worldtool if entity @s[tag=wt.clone.mirror.y]
execute store success score #mirrorZ worldtool if entity @s[tag=wt.clone.mirror.z]
