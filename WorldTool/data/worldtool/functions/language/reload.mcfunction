# Called by worldtool:technical/load and some future options function maybe
# Reloads the selected language

execute if data storage worldtool:storage {Language:"worldtool:en_us"} run function worldtool:language/en_us

function #worldtool:addon/language/reload
