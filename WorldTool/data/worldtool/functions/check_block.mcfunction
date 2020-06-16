#Hmm... could there be a block here?
execute unless block ~ ~ ~ #worldtool:air_blocks at @a[tag=measure_filter] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/measure/start
execute unless block ~ ~ ~ #worldtool:air_blocks at @a[tag=placing_fill] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/start
execute unless block ~ ~ ~ #worldtool:air_blocks at @a[tag=checkered_select] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/checkered/start
execute unless block ~ ~ ~ #worldtool:air_blocks at @a[tag=replacing_fill1] if score @s wt_ID = @p wt_ID as @p at @s run function worldtool:ui/replace/select_replace2
execute unless block ~ ~ ~ #worldtool:air_blocks at @a[tag=replacing_fill2] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/replace/start_replace
execute unless block ~ ~ ~ #worldtool:air_blocks at @a[tag=hollowing] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/hollow/start_hollow
execute unless block ~ ~ ~ #worldtool:air_blocks at @a[tag=placing_hollow_inner] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/hollow/inner_block/selected
execute unless block ~ ~ ~ #worldtool:air_blocks at @a if score @s wt_ID = @p wt_ID unless entity @p[tag=!placing_filtered,tag=!placing_filtered_reversed] as @p at @s run function worldtool:ui/clone/clone_select_filter
execute unless block ~ ~ ~ #worldtool:air_blocks at @a[tag=rnd_replacingfill1] if score @s wt_ID = @p wt_ID as @p at @s run function worldtool:ui/random/replace/start
execute unless block ~ ~ ~ #worldtool:air_blocks at @a[tag=c_replacing_fill1] if score @s wt_ID = @p wt_ID as @p at @s run function worldtool:ui/checkered/replace/select_replace2
execute unless block ~ ~ ~ #worldtool:air_blocks at @a[tag=c_replacing_fill2] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/checkered/replace/start_replace
execute unless block ~ ~ ~ #worldtool:air_blocks at @a[tag=block_select_outline] if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/fill_outline/start

#Two brush things, separated from the others because these use falling blocks instead
execute if entity @s[tag=brush] if entity @e[type=minecraft:falling_block,tag=switch_block_brush,distance=...2] at @a if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/brush/set/set_block
execute if entity @s[tag=replacebrushc] if entity @e[type=minecraft:falling_block,tag=switch_block_brush,distance=...2] at @a if score @s wt_ID = @p wt_ID as @p run function worldtool:ui/brush/select_replace/selected