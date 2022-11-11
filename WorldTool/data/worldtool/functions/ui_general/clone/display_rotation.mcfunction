# Called by worldtool:ui_general/clone/menu and worldtool:ui_general/clone/rotation/menu
# Displays the current rotation

scoreboard players operation @s wt.rotX %= #360 worldtool
scoreboard players operation @s wt.rotY %= #360 worldtool
scoreboard players operation @s wt.rotZ %= #360 worldtool

scoreboard players set #temp worldtool 0
execute unless score @s wt.rotX matches 0 run scoreboard players set #temp worldtool 1
execute unless score @s wt.rotY matches 0 run scoreboard players set #temp worldtool 1
execute unless score @s wt.rotZ matches 0 run scoreboard players set #temp worldtool 1
execute unless entity @s[tag=!wt.clone.mirror.x,tag=!wt.clone.mirror.y,tag=!wt.clone.mirror.z] run scoreboard players set #temp worldtool 1

execute if score #temp worldtool matches 1 run tellraw @s {"nbt":"Translation.\"info.clone.rotation\"","storage": "worldtool:storage"}

execute unless score @s wt.rotX matches 0 run tellraw @s {"nbt":"Translation.\"info.clone.rotation.x\"","storage": "worldtool:storage","interpret": true}
execute unless score @s wt.rotY matches 0 run tellraw @s {"nbt":"Translation.\"info.clone.rotation.y\"","storage": "worldtool:storage","interpret": true}
execute unless score @s wt.rotZ matches 0 run tellraw @s {"nbt":"Translation.\"info.clone.rotation.z\"","storage": "worldtool:storage","interpret": true}

execute if entity @s[tag=wt.clone.mirror.x] run tellraw @s {"nbt":"Translation.\"info.clone.mirror.x\"","storage": "worldtool:storage"}
execute if entity @s[tag=wt.clone.mirror.y] run tellraw @s {"nbt":"Translation.\"info.clone.mirror.y\"","storage": "worldtool:storage"}
execute if entity @s[tag=wt.clone.mirror.z] run tellraw @s {"nbt":"Translation.\"info.clone.mirror.z\"","storage": "worldtool:storage"}

execute if score #temp worldtool matches 1 run tellraw @s ""
