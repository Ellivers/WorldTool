#Different actions for dropping a tool
execute unless entity @s[nbt=!{Item:{tag:{Type:1b}}},nbt=!{Item:{tag:{Type:2b}}}] run function worldtool:switch_coas
execute if data entity @s {Item:{tag:{Type:6b}}} run function worldtool:ui/brush/dropped