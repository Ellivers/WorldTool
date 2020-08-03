execute at @a[tag=placing_fill] if score @s wt_ID = @p wt_ID as @p run function worldtool:load_function/start_check1
execute at @a[tag=replacing_fill2] if score @s wt_ID = @p wt_ID as @p run function worldtool:load_function/start_check1
execute at @a[tag=hollowing] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/hollow/start_hollow
execute at @a[tag=checkered_select] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/checkered/start
execute at @a[tag=c_replacing_fill2] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/checkered/replace/start_replace
execute at @a[tag=block_select_outline] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/fill_outline/start
execute at @a[tag=destroy_select] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/destroy/start
execute at @a[tag=d_replacing_fill2] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/destroy/replace/start_replace