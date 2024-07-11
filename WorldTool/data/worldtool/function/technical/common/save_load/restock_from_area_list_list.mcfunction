# Called recursively and by worldtool:technical/save_load/backup/done/load
# Restocks all backup slots in a list of lists of template lists

data modify storage worldtool:storage Temp.AreaList set from storage worldtool:storage Temp.AreaListList[0]

function worldtool:technical/common/save_load/restock_from_area_list

data remove storage worldtool:storage Temp.AreaListList[0]

execute if data storage worldtool:storage Temp.AreaListList[0] run function worldtool:technical/common/save_load/restock_from_area_list_list
