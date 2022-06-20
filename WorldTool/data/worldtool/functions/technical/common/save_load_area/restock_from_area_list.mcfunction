# Called recursively and by worldtool:ui_general/options/save_load_area/backup/done
# Restocks all backup slots in a list of template lists

data modify storage worldtool:storage Temp.TemplateList set from storage worldtool:storage Temp.List[0].TemplateList

function worldtool:technical/common/save_load_area/restock_slots

data remove storage worldtool:storage Temp.List[0]

execute if data storage worldtool:storage Temp.List[0] run function worldtool:technical/common/save_load_area/restock_from_list
