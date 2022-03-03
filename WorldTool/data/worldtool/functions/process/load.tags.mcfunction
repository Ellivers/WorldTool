# Called by worldtool:process/load
# Specifies which process to continue with

scoreboard players reset #blocksChecked worldtool

execute if entity @s[tag=wt.process.fill] run function worldtool:process/fill/main
execute if entity @s[tag=wt.process.replace] run function worldtool:process/replace/main
execute if entity @s[tag=wt.process.filtered_measure] run function worldtool:process/filtered_measure/main

function #worldtool:addon/process/check_tags
