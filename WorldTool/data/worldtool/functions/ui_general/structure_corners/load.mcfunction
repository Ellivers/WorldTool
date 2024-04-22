# Called by worldtool:ui_general/page2
# Loads the stucture corners menu

function worldtool:database/get

execute if score $keepMenuOptions worldtool matches 0 run data modify storage rx.playerdb:io player.data.WorldTool.StructureCornerName set value "worldtool:example"
execute if score $keepMenuOptions worldtool matches 1 unless data storage rx.playerdb:io player.data.WorldTool.StructureCornerName run data modify storage rx.playerdb:io player.data.WorldTool.StructureCornerName set value "worldtool:example"

function worldtool:database/save

function worldtool:ui_general/structure_corners/menu
