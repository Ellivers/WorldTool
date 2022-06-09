# Called by worldtool:process/load
# Specifies which process to continue with

scoreboard players reset #blocksChecked worldtool

execute if entity @s[tag=wt.process.fill] run function worldtool:process/fill/main
execute if entity @s[tag=wt.process.replace] run function worldtool:process/replace/main
execute if entity @s[tag=wt.process.filter_measure] run function worldtool:process/filter_measure/main
execute if entity @s[tag=wt.process.clone.normal] run function worldtool:process/clone/normal/main
execute if entity @s[tag=wt.process.clone.rotate] run function worldtool:process/clone/rotate/main
execute if entity @s[tag=wt.process.randomization_source] run function worldtool:process/randomization_source/load
execute if entity @s[tag=wt.process.randomize] run function worldtool:process/randomize/load

function #worldtool:addon/process/check_tags
