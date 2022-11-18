# Called by various functions
# Preview particles for repeat

function worldtool:technical/common/temp_entity

scoreboard players operation #tempPosX worldtool = #particleRepeatPosX worldtool
scoreboard players operation #tempPosX worldtool *= #sizeX worldtool
scoreboard players operation #temp worldtool = #particleRepeatPosX worldtool
scoreboard players operation #temp worldtool *= @s wt.size
scoreboard players operation #tempPosX worldtool += #temp worldtool
scoreboard players operation #tempPosX worldtool += #pos1xt worldtool

scoreboard players operation #tempPosY worldtool = #particleRepeatPosY worldtool
scoreboard players operation #tempPosY worldtool *= #sizeY worldtool
scoreboard players operation #temp worldtool = #particleRepeatPosY worldtool
scoreboard players operation #temp worldtool *= @s wt.size
scoreboard players operation #tempPosY worldtool += #temp worldtool
scoreboard players operation #tempPosY worldtool += #pos1yt worldtool

scoreboard players operation #tempPosZ worldtool = #particleRepeatPosZ worldtool
scoreboard players operation #tempPosZ worldtool *= #sizeZ worldtool
scoreboard players operation #temp worldtool = #particleRepeatPosZ worldtool
scoreboard players operation #temp worldtool *= @s wt.size
scoreboard players operation #tempPosZ worldtool += #temp worldtool
scoreboard players operation #tempPosZ worldtool += #pos1zt worldtool

execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/repeat_preview/set_corner.pos1
execute at d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/clone_preview/pos1/load

scoreboard players operation #tempPosX worldtool += #offsetX worldtool
scoreboard players operation #tempPosY worldtool += #offsetY worldtool
scoreboard players operation #tempPosZ worldtool += #offsetZ worldtool

execute as d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/repeat_preview/set_corner.pos2
execute at d43b8e30-51cc-4da0-918a-60a557ae676f run function worldtool:particles/clone_preview/pos2/load

kill d43b8e30-51cc-4da0-918a-60a557ae676f

# Move the position
execute if score #particleRepeatPosX worldtool < #pos2xp worldtool run function worldtool:particles/repeat_preview/x
execute if score #particleRepeatPosX worldtool > #pos2xp worldtool run function worldtool:particles/repeat_preview/-x

execute if score #particleRepeatPosZ worldtool < #pos2zp worldtool run function worldtool:particles/repeat_preview/z
execute if score #particleRepeatPosZ worldtool > #pos2zp worldtool run function worldtool:particles/repeat_preview/-z

execute if score #particleRepeatPosY worldtool < #pos2yp worldtool run function worldtool:particles/repeat_preview/y
execute if score #particleRepeatPosY worldtool > #pos2yp worldtool run function worldtool:particles/repeat_preview/-y
