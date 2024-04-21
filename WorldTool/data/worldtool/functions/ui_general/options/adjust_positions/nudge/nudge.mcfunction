# Called by worldtool:ui_general/options/adjust_positions/nudge/ nudging functions
# Nudges the executing positions

execute unless score #temp.X worldtool matches 0 store result score #tempPos worldtool run data get entity @s Pos[0]
execute unless score #temp.Y worldtool matches 0 store result score #tempPos worldtool run data get entity @s Pos[1]
execute unless score #temp.Z worldtool matches 0 store result score #tempPos worldtool run data get entity @s Pos[2]

execute unless score #temp.X worldtool matches 0 run scoreboard players operation #newStep worldtool = #temp.X worldtool
execute unless score #temp.Y worldtool matches 0 run scoreboard players operation #newStep worldtool = #temp.Y worldtool
execute unless score #temp.Z worldtool matches 0 run scoreboard players operation #newStep worldtool = #temp.Z worldtool

scoreboard players operation #newStep worldtool *= #stepSize worldtool
scoreboard players operation #tempPos worldtool += #newStep worldtool

execute unless score #temp.X worldtool matches 0 store result entity @s Pos[0] double 1 run scoreboard players get #tempPos worldtool
execute unless score #temp.Y worldtool matches 0 store result entity @s Pos[1] double 1 run scoreboard players get #tempPos worldtool
execute unless score #temp.Z worldtool matches 0 store result entity @s Pos[2] double 1 run scoreboard players get #tempPos worldtool
