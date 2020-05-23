execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove random1
execute as @e[type=minecraft:area_effect_cloud,tag=wt_drawer] if score @s wt_ID = @p wt_ID run kill @s

clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:5b} 1
give @s minecraft:carrot_on_a_stick{worldTool:1b,Type:1b,Unbreakable:1b,Enchantments:[{}],display:{Name:'{"text":"Set position 1","italic":false}'}}
execute at @s positioned ~ ~ ~ run function worldtool:ui/random/select