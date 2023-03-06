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
execute unless score #temp worldtool matches 0 run function worldtool:process_start/general/setup_process/clone/template_transfer/rotate

data modify storage worldtool:storage Temp.ToNext set value {AreaList:[{}]}
data modify storage worldtool:storage Temp.ToNext.AreaList[0].TemplateList set from storage worldtool:storage Processes[-1].Output.SavedAreas[0].TemplateList
function worldtool:technical/common/transfer_to_next
