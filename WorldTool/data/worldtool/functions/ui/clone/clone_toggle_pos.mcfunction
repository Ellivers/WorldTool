execute if entity @s[tag=!atsetpos] run tag @s add settingclonepos
execute if entity @s[tag=!atsetpos] run tag @s add atsetpos
execute if entity @s[tag=atsetpos,tag=!settingclonepos] run tag @s remove atsetpos
tag @s remove settingclonepos

function worldtool:ui/clone/select_clone