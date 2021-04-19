scoreboard players set #checkeredX worldtool 1
scoreboard players set #checkeredY worldtool 1
scoreboard players set #checkeredZ worldtool 1
execute if entity @s[tag=wt_nochX] run scoreboard players set #checkeredX worldtool 0
execute if entity @s[tag=wt_nochY] run scoreboard players set #checkeredY worldtool 0
execute if entity @s[tag=wt_nochZ] run scoreboard players set #checkeredZ worldtool 0
