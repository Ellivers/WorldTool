execute if entity @s[tag=!fun_menu] run tag @s add settingfun
execute if entity @s[tag=!fun_menu] run tag @s add fun_menu
execute if entity @s[tag=fun_menu,tag=!settingfun] run tag @s remove fun_menu
tag @s remove settingfun
execute as @p run function worldtool:ui/more