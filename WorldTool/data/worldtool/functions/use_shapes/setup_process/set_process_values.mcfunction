# Called by shape process adder functions
# Sets base data for a new shape process

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute store result storage worldtool:storage Processes[0].Owner int 1 run scoreboard players get #ID_temp worldtool
data modify storage worldtool:storage Processes[0].StartType set value "worldtool:shape"
data modify storage worldtool:storage Processes[0].Input.ShapeSettings set from entity @s SelectedItem.tag.WorldTool.ShapeSettings
data modify storage worldtool:storage Processes[0].Blocks.Primary set from entity @s SelectedItem.tag.WorldTool.PrimaryBlock
data modify storage worldtool:storage Processes[0].Blocks.Secondary set from entity @s SelectedItem.tag.WorldTool.SecondaryBlock
execute if predicate worldtool:shape_tool/settings/replace/normal run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shapes.replace.normal"
execute if predicate worldtool:shape_tool/settings/replace/exclude run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shapes.replace.exclude"
execute if predicate worldtool:shape_tool/settings/keep run data modify storage worldtool:storage Processes[0].Tags append value "wt.keep"
execute if predicate worldtool:shape_tool/settings/hollow run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.shapes.hollow"

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.shape_position] if score @s wt.ID = #ID_temp worldtool run data modify storage worldtool:storage Processes[0].Position set from entity @s Pos
