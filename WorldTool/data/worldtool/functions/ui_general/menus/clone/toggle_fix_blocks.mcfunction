execute if entity @s[tag=!wt_fix_blocks] run tag @s add wt_toggling
execute if entity @s[tag=!wt_fix_blocks] run tag @s add wt_fix_blocks
execute if entity @s[tag=wt_fix_blocks,tag=!wt_toggling] run tag @s remove wt_fix_blocks
tag @s remove wt_toggling

function worldtool:ui_general/menus/clone/select
