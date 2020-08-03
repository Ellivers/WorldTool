# Called by worldtool:coas/dropped_coas
# Switches between 'Select position 1' and 'Select position 2', or just gives it back
execute if entity @s[nbt={Item:{tag:{Type:1b}}},tag=!switched] run function worldtool:coas/switch_to_2
execute if entity @s[nbt={Item:{tag:{Type:2b}}},tag=!switched] run function worldtool:coas/switch_to_1
execute if entity @s[nbt=!{Item:{tag:{Type:1b}}},nbt=!{Item:{tag:{Type:2b}}}] run function worldtool:coas/give_back