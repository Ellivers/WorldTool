# Called by worldtool:ui/settings/language/menu
# Sets the language to English (US)

function worldtool:language/en_us

function worldtool:ui/settings/language/menu

tellraw @s {"nbt":"Translation.\"info.language_selected\"","storage": "worldtool:storage","color": "green"}
