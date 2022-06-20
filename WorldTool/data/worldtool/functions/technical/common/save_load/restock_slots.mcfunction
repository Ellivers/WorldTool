# Called recursively and by various functions
# Adds backup slots to the available slots list

data modify storage worldtool:storage AvailableBackupSlots append from storage worldtool:storage Temp.TemplateList[0].Slot
data remove storage worldtool:storage Temp.TemplateList[0]

execute if data storage worldtool:storage Temp.TemplateList[0] run function worldtool:technical/common/save_load/restock_slots
