execute if entity @s[tag=!keep] if score @s wt_ID = @p wt_ID run tag @s add wt_toggling
execute if entity @s[tag=!keep] if score @s wt_ID = @p wt_ID run tag @s add keep
execute if entity @s[tag=keep,tag=!wt_toggling] if score @s wt_ID = @p wt_ID run tag @s remove keep
tag @s remove wt_toggling
execute as @p run function worldtool:ui/random/select