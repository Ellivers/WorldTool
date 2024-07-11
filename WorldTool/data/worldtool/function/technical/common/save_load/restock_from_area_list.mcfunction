# Called recursively and by worldtool:technical/common/save_load/restock_from_area_list_list
# Restocks all backup slots in a list of template lists

data modify storage worldtool:storage Temp.TemplateList set from storage worldtool:storage Temp.AreaList[0].TemplateList

function worldtool:technical/common/save_load/restock_slots

data remove storage worldtool:storage Temp.AreaList[0]

execute if data storage worldtool:storage Temp.AreaList[0] run function worldtool:technical/common/save_load/restock_from_area_list
