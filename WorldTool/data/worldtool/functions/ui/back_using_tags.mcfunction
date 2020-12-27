#execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=waiting_marker] if score @s wt_ID = @p wt_ID run kill @s
#tag @s remove wt_waiting
tag @s remove grabbing_block
tag @s remove pick_primary_block
tag @s remove pick_secondary_block
tag @s[predicate=worldtool:tool_states/8] add wt_pick_block_tool
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:8b}
execute unless entity @s[tag=!setclonepos,tag=!random_1,tag=!random_2,tag=!wt_pick_block_tool] run loot give @s loot worldtool:general_tool
tag @s remove wt_pick_block_tool
execute if entity @s[tag=replacing_fill1] run function worldtool:ui/replace/select_replace1
execute if entity @s[tag=replacing_fill2] run function worldtool:ui/replace/select_replace2
execute if entity @s[tag=checkered_select] run function worldtool:ui/checkered/select
execute if entity @s[tag=c_replacing_fill1] run function worldtool:ui/checkered/replace/select_replace1
execute if entity @s[tag=c_replacing_fill2] run function worldtool:ui/checkered/replace/select_replace2
execute if entity @s[tag=placing_filtered] run function worldtool:ui/clone/filter/select_clone_filtered.normal
execute if entity @s[tag=placing_filtered_reversed] run function worldtool:ui/clone/filter/select_clone_filtered.reversed
execute if entity @s[tag=destroy_select] run function worldtool:ui/destroy/select
execute if entity @s[tag=d_replacing_fill1] run function worldtool:ui/destroy/replace/select_replace1
execute if entity @s[tag=d_replacing_fill2] run function worldtool:ui/destroy/replace/select_replace2
execute if entity @s[tag=block_select_outline] run function worldtool:ui/fill_outline/select
execute if entity @s[tag=placing_replace_foliage] run function worldtool:ui/foliage/replace/select.normal
execute if entity @s[tag=placing_replace_foliage_reversed] run function worldtool:ui/foliage/replace/select.reversed
execute if entity @s[tag=placing_hollow_inner] run function worldtool:ui/hollow/inner_block/select
execute if entity @s[tag=hollowing] run function worldtool:ui/hollow/select
execute if entity @s[tag=measure_filter,tag=!measure_filter_reversed] run function worldtool:ui/measure/filtered/select.normal
execute if entity @s[tag=measure_filter,tag=measure_filter_reversed] run function worldtool:ui/measure/filtered/select.reversed
execute if entity @s[tag=rnd_replacingfill1] run function worldtool:ui/random/replace/select_replace1
execute if entity @s[tag=placing_fill] run function worldtool:ui/select
