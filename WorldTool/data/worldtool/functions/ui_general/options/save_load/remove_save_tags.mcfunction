# Called by various functions
# Removes the tags used by the save area process

tag @s remove wt.save_area.copy
tag @s remove wt.save_area.back_up
tag @s remove wt.save_area.first_undo

function #worldtool:addon/save_load/remove_save_tags
