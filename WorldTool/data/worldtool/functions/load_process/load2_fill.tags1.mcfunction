# First list
execute if entity @s[tag=cloning_wt,tag=!from_cmd] run function worldtool:load_process/load_clone
execute if entity @s[tag=cloning_wt,tag=from_cmd] run function worldtool:cmd/load_clone2
execute if entity @s[tag=hollow] run function worldtool:hollow/hollow
execute if entity @s[tag=random1,tag=!from_cmd] run function worldtool:random/1
execute if entity @s[tag=random1,tag=from_cmd] run function worldtool:cmd/random/1
execute if entity @s[tag=random2,tag=!from_cmd] run function worldtool:random/2
execute if entity @s[tag=random2,tag=from_cmd] run function worldtool:cmd/random/2
execute if entity @s[tag=foliage_ing] run function worldtool:foliage/run
execute if entity @s[tag=filling_outline] run function worldtool:fill_outline/outline
execute if entity @s[tag=wt_circlegen] run function worldtool:generate_shape/circle/resume
