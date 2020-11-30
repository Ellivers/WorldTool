function worldtool:ui/clear_chat
loot spawn ~ ~ ~ loot worldtool:generation_tool

setblock ~2 255 ~ oak_sign{Text1:'{"nbt":"BlockState.Name","entity":"@e[type=minecraft:falling_block,tag=switch_gen_block,limit=1]","color":"light_purple","italic":false}'}
execute as @e[type=minecraft:item,sort=nearest,limit=1] run function worldtool:ui/generation_tool/select/block_selected.item
clone ~1 255 ~ ~1 255 ~ ~2 255 ~

kill @e[type=minecraft:falling_block,tag=switch_gen_block,limit=1]
replaceitem entity @s weapon.mainhand minecraft:air
tag @s remove wt_check_block_shge
