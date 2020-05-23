tag @s remove placing_fill
tellraw @s "\n\n\n\n\n\n\n\n\n"
execute as @e[type=minecraft:armor_stand,tag=show_rot] if score @s wt_ID = @p wt_ID run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID if entity @s[tag=keep] run tellraw @p {"text":"Keep has been set to true\n\n\n","color":"green","italic":true}

execute unless score @s rotY matches 0 run tellraw @s [{"text":"Current rotation: Y ","color":"gold","bold":true},{"score":{"name":"@s","objective":"rotY"},"color":"gold","bold":true},{"text":"\n\n\n"}]
execute unless score @s rotZ matches 0 run tellraw @s [{"text":"Current rotation: Z ","color":"gold","bold":true},{"score":{"name":"@s","objective":"rotZ"},"color":"gold","bold":true},{"text":"\n\n\n"}]
execute unless score @s rotX matches 0 run tellraw @s [{"text":"Current rotation: X ","color":"gold","bold":true},{"score":{"name":"@s","objective":"rotX"},"color":"gold","bold":true},{"text":"\n\n\n"}]

execute if entity @s[tag=!atsetpos] as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/clone/select_clone.pos1_1
execute if entity @s[tag=atsetpos] as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/clone/select_clone.pos1_2
function worldtool:ui/anti_feedback_chat_message/load