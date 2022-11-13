# Called by worldtool:process_end/load
# Commands to run when an area has been loaded

execute if entity @s[tag=wt.process.load_area.clone] run data modify storage worldtool:storage Temp.TemplateList set from storage worldtool:storage Processes[-1].Input.AreaList[0].TemplateList
execute if entity @s[tag=wt.process.load_area.clone] run function worldtool:technical/common/save_load/restock_slots

function #worldtool:addon/save_load/area_loaded
