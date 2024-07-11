# Called by worldtool:proces/load_area/main
# Gives an error that a template is missing

execute store result score #ID_temp worldtool run data get storage worldtool:storage Processes[-1].Owner
execute as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:ui/error/template_not_found

function worldtool:process_end/end
