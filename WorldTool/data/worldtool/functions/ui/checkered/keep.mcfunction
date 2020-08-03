# Called by clickEvent from worldtool:ui/checkered/select.pos1
# Toggles the keep option
execute if entity @s[tag=!keep] if score @s wt_ID = @p wt_ID run tag @s add settingkeep
execute if entity @s[tag=!keep] if score @s wt_ID = @p wt_ID run tag @s add keep
execute if entity @s[tag=keep,tag=!settingkeep] if score @s wt_ID = @p wt_ID run tag @s remove keep
tag @s remove settingkeep
execute as @p run function worldtool:ui/checkered/select