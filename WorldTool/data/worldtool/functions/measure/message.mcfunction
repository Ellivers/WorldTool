execute unless score #totalArea worldtool matches 0..1 run tellraw @s [{"nbt":"Translation.\"info.measure.multiple\"","storage": "worldtool:storage","interpret": true}," (",{"score":{"name":"#widthX","objective":"worldtool"}}," X * ",{"score":{"name":"#heightY","objective":"worldtool"}}," Y * ",{"score":{"name":"#lengthZ","objective":"worldtool"}}," Z)"]
execute if score #totalArea worldtool matches 0..1 run tellraw @s {"nbt":"Translation.\"info.measure.single\"","storage": "worldtool:storage"}
tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
