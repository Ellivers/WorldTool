# Rotate a specified amount (precision) after every circle has been drawn

scoreboard players set $blocksplaced worldtool 0
scoreboard players set #totalRotationX worldtool 0
scoreboard players set #totalRotationY worldtool 0
scoreboard players set #stopGenerating worldtool 0
scoreboard players set #genFunctionsRun worldtool 0
scoreboard players set #generationRay worldtool 0
scoreboard players set #blockschecked worldtool 0
scoreboard players set #generationRay worldtool 0

execute store result entity @s Rotation[1] float 1 run scoreboard players get #xRot worldtool

execute store result score #sCurrentRot worldtool run data get entity @s Rotation[0] 100
#tellraw @a ["Current rotation 1: ",{"score": {"name": "#sCurrentRot","objective": "worldtool"}}]
scoreboard players operation #sCurrentRot worldtool += #shapePrecision worldtool
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #sCurrentRot worldtool
scoreboard players operation #sTotalRot worldtool += #shapePrecision worldtool

#tellraw @a ["Current rotation 2: ",{"score": {"name": "#sCurrentRot","objective": "worldtool"}}]
#tellraw @a ["Total rotation: ",{"score": {"name": "#sTotalRot","objective": "worldtool"}}]

execute if score #sTotalRot worldtool > #sMaxDegrees worldtool if score #sCurrentRot worldtool > #sMaxRotation worldtool run scoreboard players set #stopGenerating worldtool 1
#execute at @s run setblock ^ ^ ^10 emerald_block

execute if score #stopGenerating worldtool matches 1 run function worldtool:generate_shape/circle/stop.stop
execute unless score #stopGenerating worldtool matches 1 at @s align xyz positioned ~.5 ~.5 ~.5 run function worldtool:generate_shape/circle/raycast
