execute if entity @s[tag=!wt_no_drops] if score @s wt_ID = @p wt_ID run tag @s add wt_toggle_drops
execute if entity @s[tag=!wt_no_drops] if score @s wt_ID = @p wt_ID run tag @s add wt_no_drops
execute if entity @s[tag=wt_no_drops,tag=!wt_toggle_drops] if score @s wt_ID = @p wt_ID run tag @s remove wt_no_drops
tag @s remove wt_toggle_drops
execute if entity @s[tag=!wt_no_drops] run gamerule doTileDrops true
execute as @p run function worldtool:ui/destroy/select