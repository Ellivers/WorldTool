# Called by various functions
# Gets the counts of positions 1 and 2

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set #pos1count worldtool 0
scoreboard players set #pos2count worldtool 0

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos1] if score @s wt.ID = #ID_temp worldtool run scoreboard players add #pos1count worldtool 1
execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.pos2] if score @s wt.ID = #ID_temp worldtool run scoreboard players add #pos2count worldtool 1
