# Called by worldtool:technical/load
# Reloads the selected language

data remove storage worldtool:storage Translation

execute if data storage worldtool:storage {Language:"worldtool:en_us"} run function worldtool:language/en_us

function #worldtool:hooks/language/reload
