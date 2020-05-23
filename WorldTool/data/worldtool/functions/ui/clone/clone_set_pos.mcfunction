tellraw @s {"text":"\n\n\n\n\n\n\n\n\n"}
tag @s add settingclonepos
execute if entity @s[tag=atsetpos,tag=settingclonepos] run tag @s remove settingclonepos
execute if entity @s[tag=atsetpos,tag=!settingclonepos] run tag @s remove atsetpos
execute if entity @s[tag=!atsetpos,tag=settingclonepos] run tag @s add atsetpos
tag @s remove settingclonepos
function worldtool:ui/clone/select_clone