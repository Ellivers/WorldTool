# Called by worldtool:brush/use
# Setting the structure block and getting the data set by the player
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"none",rotation:"NONE",metadata:"WorldTool Structure Brush"}
data modify block ~ ~ ~ name set from entity @s SelectedItem.tag.BrushSettings.Structure
data modify block ~ ~ ~ rotation set from entity @s SelectedItem.tag.BrushSettings.StructureRot
data modify block ~ ~ ~ posX set from entity @s SelectedItem.tag.BrushSettings.StructureOffset.X
data modify block ~ ~ ~ posY set from entity @s SelectedItem.tag.BrushSettings.StructureOffset.Y
data modify block ~ ~ ~ posZ set from entity @s SelectedItem.tag.BrushSettings.StructureOffset.Z
data modify block ~ ~ ~ mirror set from entity @s SelectedItem.tag.BrushSettings.StructureMirror

# Attempt to load the structure
setblock ~ ~1 ~ minecraft:redstone_block

# If the structure failed to load, throw an error
execute if block ~ ~ ~ minecraft:structure_block{metadata:"WorldTool Structure Brush",sizeX:0,sizeY:0,sizeZ:0} run tellraw @s {"text": "Error: invalid structure","color": "red"}