# Called by various functions
# The process functionality for Clone without rotation

execute if score #hasMoved worldtool matches 0 if score #hasMoved2 worldtool matches 1 unless score #tempDir worldtool matches 0 run function worldtool:process/clone/rotate/correct_pos.secondary
function worldtool:process/clone/common

scoreboard players operation #tempRotX worldtool = #rotationX worldtool
scoreboard players operation #tempRotY worldtool = #rotationY worldtool
scoreboard players operation #tempRotZ worldtool = #rotationZ worldtool

execute store success score #mirrorX worldtool if entity @s[tag=wt.process.clone.mirror.x]
execute store success score #mirrorY worldtool if entity @s[tag=wt.process.clone.mirror.y]
execute store success score #mirrorZ worldtool if entity @s[tag=wt.process.clone.mirror.z]

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/clone/rotate/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/clone/rotate/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/clone/rotate/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/clone/rotate/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/clone/rotate/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/clone/rotate/-y
