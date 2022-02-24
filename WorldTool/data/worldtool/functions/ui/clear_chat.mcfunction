# Called by various functions
# "Clear" the chat unless the option turns it off

execute unless score $clearChat worldtool matches ..0 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if entity @s[tag=!wt.dont_clear_tags] run function worldtool:ui/remove_menu_tags
tag @s remove wt.dont_clear_tags
