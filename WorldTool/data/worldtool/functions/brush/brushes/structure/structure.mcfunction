# Called by worldtool:brush/use
# Setting the structure block and getting the data set by the player
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"none",rotation:"NONE",metadata:"WorldTool Structure Brush",ignoreEntities:0b}
data modify block ~ ~ ~ name set from storage worldtool:storage BrushData.Structure
data modify block ~ ~ ~ rotation set from storage worldtool:storage BrushData.StructureRot
data modify block ~ ~ ~ posX set from storage worldtool:storage BrushData.StructureOffset.X
data modify block ~ ~ ~ posY set from storage worldtool:storage BrushData.StructureOffset.Y
data modify block ~ ~ ~ posZ set from storage worldtool:storage BrushData.StructureOffset.Z
data modify block ~ ~ ~ mirror set from storage worldtool:storage BrushData.StructureMirror

# Attempt to load the structure
setblock ~ ~1 ~ minecraft:redstone_block

# If the structure failed to load, throw an error
execute if block ~ ~ ~ minecraft:structure_block{metadata:"WorldTool Structure Brush",sizeX:0,sizeY:0,sizeZ:0} run tellraw @s {"text": "Error: invalid structure","color": "red"}
