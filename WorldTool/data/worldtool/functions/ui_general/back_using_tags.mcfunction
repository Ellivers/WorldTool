#execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=waiting_marker] if score @s wt_ID = @p wt_ID run kill @s
#tag @s remove wt_waiting
tag @s remove grabbing_block
tag @s remove pick_primary_block
tag @s remove pick_secondary_block
tag @s[predicate=worldtool:tool_states/8] add wt_pick_block_tool
clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:8b}
execute unless entity @s[tag=!setclonepos,tag=!wt_random_1,tag=!wt_random_2,tag=!wt_pick_block_tool] run loot give @s loot worldtool:general_tool
tag @s remove wt_pick_block_tool
execute if entity @s[tag=replacing_fill1] run function worldtool:ui_general/menus/replace/select_replace1
execute if entity @s[tag=replacing_fill2] run function worldtool:ui_general/menus/replace/select_replace2
execute if entity @s[tag=checkered_select] run function worldtool:ui_general/menus/checkered/select
execute if entity @s[tag=c_replacing_fill1] run function worldtool:ui_general/menus/checkered/replace/select_replace1
execute if entity @s[tag=c_replacing_fill2] run function worldtool:ui_general/menus/checkered/replace/select_replace2
execute if entity @s[tag=placing_filtered] run function worldtool:ui_general/menus/clone/filter/select_clone_filtered.normal
execute if entity @s[tag=placing_filtered_reversed] run function worldtool:ui_general/menus/clone/filter/select_clone_filtered.reversed
execute if entity @s[tag=destroy_select] run function worldtool:ui_general/menus/destroy/select
execute if entity @s[tag=d_replacing_fill1] run function worldtool:ui_general/menus/destroy/replace/select_replace1
execute if entity @s[tag=d_replacing_fill2] run function worldtool:ui_general/menus/destroy/replace/select_replace2
execute if entity @s[tag=block_select_outline] run function worldtool:ui_general/menus/outline/select
execute if entity @s[tag=wt_placing_replace_greenery] run function worldtool:ui_general/menus/greenery/replace/select.normal
execute if entity @s[tag=wt_placing_replace_greenery_reversed] run function worldtool:ui_general/menus/greenery/replace/select.reversed
execute if entity @s[tag=placing_hollow_inner] run function worldtool:ui_general/menus/hollow/inner_block/select
execute if entity @s[tag=hollowing] run function worldtool:ui_general/menus/hollow/select
execute if entity @s[tag=measure_filter,tag=!measure_filter_reversed] run function worldtool:ui_general/menus/measure/filtered/select.normal
execute if entity @s[tag=measure_filter,tag=measure_filter_reversed] run function worldtool:ui_general/menus/measure/filtered/select.reversed
execute if entity @s[tag=rnd_replacingfill1] run function worldtool:ui_general/menus/randomize/replace/select_replace1
execute if entity @s[tag=placing_fill] run function worldtool:ui_general/menus/page1
