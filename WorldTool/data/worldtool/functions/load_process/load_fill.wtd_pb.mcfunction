execute as @a if score @s wt_ID = #ID_temp wt_ID run bossbar set worldtool:progress players @s
execute as @a if score @s wt_ID = #ID_temp wt_ID run tag @s add nomeasuredonemessageplzthx
execute if entity @s[tag=!wt_generator] as @a if score @s wt_ID = #ID_temp wt_ID run function worldtool:measure/load
execute as @a if score @s wt_ID = #ID_temp wt_ID run tag @s remove nomeasuredonemessageplzthx

execute store result bossbar worldtool:progress max run scoreboard players get $blocksplaced worldtool
bossbar set worldtool:progress value 0
bossbar set worldtool:progress visible true
scoreboard players set #blockscheckedtotal worldtool 0
