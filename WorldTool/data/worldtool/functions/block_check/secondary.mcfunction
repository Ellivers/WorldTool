# Called by worldtool:block_check/main
# Checks the secondary block (at x-1)
execute if entity @s[tag=measure_filter] run function worldtool:ui/measure/start
execute if entity @s[tag=replacing_fill1] run function worldtool:ui/replace/select_replace2
execute if entity @s[tag=placing_hollow_inner] run function worldtool:ui/hollow/inner_block/selected
execute unless entity @s[tag=!placing_filtered,tag=!placing_filtered_reversed] run function worldtool:ui/clone/filter/select_filter
execute unless entity @s[tag=!placing_replace_foliage,tag=!placing_replace_foliage_reversed] run function worldtool:ui/foliage/replace/selected
execute if entity @s[tag=rnd_replacingfill1] run function worldtool:ui/random/replace/start
execute if entity @s[tag=c_replacing_fill1] run function worldtool:ui/checkered/replace/select_replace2
execute if entity @s[tag=d_replacing_fill1] run function worldtool:ui/destroy/replace/select_replace2