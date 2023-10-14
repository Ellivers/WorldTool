# Called by worldtool:ui_general/options/adjust_positions/nudge/ nudging functions
# Nudges the executing positions

execute unless score #temp.X worldtool matches 0 store result score #tempPos worldtool run data get entity @s Pos[0]
execute unless score #temp.Y worldtool matches 0 store result score #tempPos worldtool run data get entity @s Pos[1]
execute unless score #temp.Z worldtool matches 0 store result score #tempPos worldtool run data get entity @s Pos[2]

scoreboard players operation #temp.X worldtool *= #stepSize worldtool
scoreboard players operation #temp.Y worldtool *= #stepSize worldtool
scoreboard players operation #temp.Z worldtool *= #stepSize worldtool

scoreboard players operation #tempPos worldtool += #temp.X worldtool
scoreboard players operation #tempPos worldtool += #temp.Y worldtool
scoreboard players operation #tempPos worldtool += #temp.Z worldtool

execute unless score #temp.X worldtool matches 0 store result entity @s Pos[0] double 1 run scoreboard players get #tempPos worldtool
execute unless score #temp.Y worldtool matches 0 store result entity @s Pos[1] double 1 run scoreboard players get #tempPos worldtool
execute unless score #temp.Z worldtool matches 0 store result entity @s Pos[2] double 1 run scoreboard players get #tempPos worldtool
