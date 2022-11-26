# Called by worldtool:ui_general/remove_submenu_tags
# Removes other tags that do not *need* to be removed

tag @s remove wt.clone.mode.standard
tag @s remove wt.clone.mode.template
tag @s remove wt.clone.at_player

tag @s remove wt.checkered.alternate.x
tag @s remove wt.checkered.alternate.y
tag @s remove wt.checkered.alternate.z
tag @s remove wt.checkered.start_with_block

tag @s remove wt.greenery.remove_current
function worldtool:ui_general/greenery/plant_sources/remove_all

tag @s remove wt.shatter.drop_items

tag @s remove wt.shell.inner_block
tag @s remove wt.shell.side.up
tag @s remove wt.shell.side.down
tag @s remove wt.shell.side.north
tag @s remove wt.shell.side.south
tag @s remove wt.shell.side.east
tag @s remove wt.shell.side.west

tag @s remove wt.smooth.direction.up
tag @s remove wt.smooth.direction.down
tag @s remove wt.smooth.direction.east
tag @s remove wt.smooth.direction.west
tag @s remove wt.smooth.direction.north
tag @s remove wt.smooth.direction.south

function #rx.playerdb:api/v2/get/self
data remove storage rx.playerdb:io player.data.WorldTool.StructureCornerName

function #worldtool:hooks/ui_general/remove_submenu_tags.other

function #rx.playerdb:api/v2/save/self
