# Called by worldtool:process_end/load
# Commands to run when an area has been saved

execute if entity @s[tag=wt.process.save_area.copy] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/save_load/copy
execute if entity @s[tag=wt.process.save_area.back_up] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/save_load/backup/done

function #worldtool:addon/save_load/area_saved
