# Called by worldtool:process_end/load
# Commands to run when an area has been saved

execute if entity @s[tag=wt.process.save_area.copy] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/save_load/copy_done/load
execute if entity @s[tag=wt.process.save_area.back_up] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:technical/save_load/backup/done/load
execute if entity @s[tag=wt.process.save_area.clone] run function worldtool:process_start/general/clone/template_transfer/load

function #worldtool:hooks/save_load/area_saved
