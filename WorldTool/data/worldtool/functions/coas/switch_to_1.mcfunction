data merge entity @s {Tags:["switched"],PickupDelay:0s,Item:{tag:{Unbreakable:1b,worldTool:1b,Type:1b,Enchantments:[{}],display:{Name:'{"text":"Set position 1","italic":false}'}}}}
execute if score #sneakingTemp worldtool matches 1 as @p run function worldtool:ui/general_tool_ui/full
tp @p
