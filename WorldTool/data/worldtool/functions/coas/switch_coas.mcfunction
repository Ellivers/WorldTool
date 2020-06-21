#Switches between 'Select position 1' and 'Select position 2'
execute if entity @s[nbt={Item:{tag:{Type:1b}}},tag=!switched] run function worldtool:coas/switch_to_2
execute if entity @s[nbt={Item:{tag:{Type:2b}}},tag=!switched] run function worldtool:coas/switch_to_1