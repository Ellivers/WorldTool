# Called by worldtool:process/load
# Specifies which process to continue with

scoreboard players set #blocksChecked worldtool 0
execute if score #writerNotFoundError worldtool matches 1 run function worldtool:process/writer_found

execute if entity @s[tag=wt.process.fill] run function worldtool:process/fill/main
execute if entity @s[tag=wt.process.replace] run function worldtool:process/replace/main
execute if entity @s[tag=wt.process.filter_measure] run function worldtool:process/filter_measure/main
execute if entity @s[tag=wt.process.clone.normal] run function worldtool:process/clone/normal/main
execute if entity @s[tag=wt.process.clone.rotate] run function worldtool:process/clone/rotate/main
execute if entity @s[tag=wt.process.randomization_source] run function worldtool:process/randomization_source/load
execute if entity @s[tag=wt.process.randomize] run function worldtool:process/randomize/load
execute if entity @s[tag=wt.process.save_area] run function worldtool:process/save_area/main
execute if entity @s[tag=wt.process.load_area] run function worldtool:process/load_area/main
execute if entity @s[tag=wt.process.checkered] run function worldtool:process/checkered/main
execute if entity @s[tag=wt.process.shell] run function worldtool:process/shell/load
execute if entity @s[tag=wt.process.outline] run function worldtool:process/outline/load

execute if entity @s[tag=wt.process.paint] run function worldtool:process/brush/paint/main
execute if entity @s[tag=wt.process.replace_brush] run function worldtool:process/brush/replace/main

execute if entity @s[tag=wt.process.cylinder.vertical] run function worldtool:process/shapes/cylinder_vertical/load
execute if entity @s[tag=wt.process.cylinder.horizontal] run function worldtool:process/shapes/cylinder_horizontal/load
execute if entity @s[tag=wt.process.cone.vertical] run function worldtool:process/shapes/cone_vertical/load
execute if entity @s[tag=wt.process.cone.horizontal] run function worldtool:process/shapes/cone_horizontal/load
execute if entity @s[tag=wt.process.sphere] run function worldtool:process/shapes/sphere/load

function #worldtool:addon/process/check_tags
