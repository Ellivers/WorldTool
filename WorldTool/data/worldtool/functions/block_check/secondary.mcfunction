# Called by worldtool:block_check/main
# Checks the secondary block (at x-1)
execute at @a[tag=measure_filter] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/measure/start
execute at @a[tag=replacing_fill1] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/replace/select_replace2
execute at @a[tag=placing_hollow_inner] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/hollow/inner_block/selected
execute at @a if score @s wt_ID = @p wt_ID as @p unless entity @s[tag=!placing_filtered,tag=!placing_filtered_reversed] run function worldtool:ui/clone/filter/select_filter
execute at @a if score @s wt_ID = @p wt_ID as @p unless entity @s[tag=!placing_replace_foliage,tag=!placing_replace_foliage_reversed] run function worldtool:ui/foliage/replace/selected
execute at @a[tag=rnd_replacingfill1] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/random/replace/start
execute at @a[tag=c_replacing_fill1] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/checkered/replace/select_replace2
execute at @a[tag=d_replacing_fill1] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/destroy/replace/select_replace2