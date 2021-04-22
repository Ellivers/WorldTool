# First list
execute if entity @s[tag=wt_clone,tag=wt_setting_clone,tag=!from_cmd] run function worldtool:process_load/clone/load
execute if entity @s[tag=wt_clone,tag=!wt_setting_clone,tag=rotated] run function worldtool:processes/clone/rotated
execute if entity @s[tag=wt_clone,tag=!wt_setting_clone,tag=!rotated] run function worldtool:processes/clone/clone
execute if entity @s[tag=hollow] run function worldtool:processes/hollow/hollow
execute if entity @s[tag=random1,tag=!from_cmd] run function worldtool:processes/random/1
execute if entity @s[tag=random1,tag=from_cmd] run function worldtool:cmd/random/1
execute if entity @s[tag=random2,tag=!from_cmd] run function worldtool:processes/random/2
execute if entity @s[tag=random2,tag=from_cmd] run function worldtool:cmd/random/2
execute if entity @s[tag=wt_greenery] run function worldtool:processes/greenery/run
execute if entity @s[tag=filling_outline] run function worldtool:processes/fill_outline/outline
execute if entity @s[tag=wt_circlegen] run function worldtool:processes/generate_shape/circle/resume
