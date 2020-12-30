data merge entity @s {Tags:["switched"],PickupDelay:0s,Item:{tag:{Unbreakable:1b,worldTool:1b,Type:2b,Enchantments:[{}],display:{Name:'{"text":"Set position 2","italic":false}'}}}}
execute if score #sneakingTemp worldtool matches 1 as @p run function worldtool:ui/tool_general/full
tp @p
