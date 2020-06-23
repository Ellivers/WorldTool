#Hmm... could there be a block here?
execute unless block ~-1 ~ ~ minecraft:air at @a[tag=measure_filter] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/measure/start
execute unless block ~1 ~ ~ minecraft:air at @a[tag=placing_fill] if score @s wt_ID = @p wt_ID as @p run function worldtool:load_function/global_start
execute unless block ~1 ~ ~ minecraft:air at @a[tag=checkered_select] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/checkered/start
execute unless block ~-1 ~ ~ minecraft:air at @a[tag=replacing_fill1] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/replace/select_replace2
execute unless block ~1 ~ ~ minecraft:air at @a[tag=replacing_fill2] if score @s wt_ID = @p wt_ID as @p run function worldtool:load_function/global_start
execute unless block ~1 ~ ~ minecraft:air at @a[tag=hollowing] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/hollow/start_hollow
execute unless block ~-1 ~ ~ minecraft:air at @a[tag=placing_hollow_inner] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/hollow/inner_block/selected
execute unless block ~-1 ~ ~ minecraft:air at @a if score @s wt_ID = @p wt_ID as @p unless entity @s[tag=!placing_filtered,tag=!placing_filtered_reversed] run function worldtool:ui/clone/filter/select_filter
execute unless block ~-1 ~ ~ minecraft:air at @a if score @s wt_ID = @p wt_ID as @p unless entity @s[tag=!placing_replace_foliage,tag=!placing_replace_foliage_reversed] run function worldtool:ui/foliage/replace/selected
execute unless block ~-1 ~ ~ minecraft:air at @a[tag=rnd_replacingfill1] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/random/replace/start
execute unless block ~-1 ~ ~ minecraft:air at @a[tag=c_replacing_fill1] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/checkered/replace/select_replace2
execute unless block ~1 ~ ~ minecraft:air at @a[tag=c_replacing_fill2] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/checkered/replace/start_replace
execute unless block ~1 ~ ~ minecraft:air at @a[tag=block_select_outline] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/fill_outline/start