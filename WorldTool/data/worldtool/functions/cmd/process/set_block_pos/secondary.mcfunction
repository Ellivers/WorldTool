# Called manually
# Sets the secondary block to the block at the executed position

function worldtool:technical/common/temp_entity
data modify storage worldtool:storage CmdProcess.BlockPositions.Secondary set from entity d43b8e30-51cc-4da0-918a-60a557ae676f Pos
kill d43b8e30-51cc-4da0-918a-60a557ae676f
