# Called by worldtool:ui_general/page2
# Loads the stucture corners menu

function #rx.playerdb:api/v2/get/self

execute if score $keepMenuOptions worldtool matches 0 run data modify storage rx.playerdb:io player.data.WorldTool.StructureCornerName set value "worldtool:example"
execute if score $keepMenuOptions worldtool matches 1 unless data storage rx.playerdb:io player.data.WorldTool.StructureCornerName run data modify storage rx.playerdb:io player.data.WorldTool.StructureCornerName set value "worldtool:example"

function #rx.playerdb:api/v2/save/self

function worldtool:ui_general/structure_corners/menu
