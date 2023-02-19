# Called by worldtool:technical/common/save_load/area_saved
# Sets up the area data for pasting the saved area

scoreboard players set #tempRotX worldtool 0
execute store result score #tempRotY worldtool run data get storage worldtool:storage Processes[-1].Input.Rotation.Y
scoreboard players set #tempRotZ worldtool 0

execute store success score #mirrorX worldtool if entity @s[tag=wt.clone.mirror.x]
scoreboard players set #mirrorY worldtool 0
execute store success score #mirrorZ worldtool if entity @s[tag=wt.clone.mirror.z]

scoreboard players operation #temp worldtool += #tempRotY worldtool
scoreboard players operation #temp worldtool += #mirrorX worldtool
scoreboard players operation #temp worldtool += #mirrorZ worldtool

scoreboard players set #temp2 worldtool 0
execute store result score #temp3 worldtool if data storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList[]
execute unless score #temp worldtool matches 0 run function worldtool:ui_general/clone/setup_template_load/rotate

data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-2]
execute if data storage worldtool:storage Temp.Process{Tags:["wt.process.save_area.back_up"]} run data modify storage worldtool:storage Processes[-3].Input.AreaList[0].TemplateList set from storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList
execute unless data storage worldtool:storage Temp.Process{Tags:["wt.process.save_area.back_up"]} run data modify storage worldtool:storage Processes[-2].Input.AreaList[0].TemplateList set from storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList
