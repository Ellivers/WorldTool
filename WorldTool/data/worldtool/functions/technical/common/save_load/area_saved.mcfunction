# Called by worldtool:process_end/load
# Commands to run when an area has been saved

execute if entity @s[tag=wt.save_area.copy] run function worldtool:ui_general/options/save_load/copy
execute if entity @s[tag=wt.save_area.back_up] run function worldtool:ui_general/options/save_load/backup/done

function #worldtool:addon/save_load/area_saved
