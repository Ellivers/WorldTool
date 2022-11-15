# Called by various functions
# Removes the tags used by the load area process

tag @s remove wt.load_area.paste
tag @s remove wt.load_area.undo
tag @s remove wt.load_area.redo

function #worldtool:hooks/save_load/remove_load_tags
