tag @s remove ticking
execute if entity @s[tag=!cmd_block_fill,tag=!cloning_wt,tag=!cmdlist_search,tag=!cmdlist,tag=!hollow,tag=!random1,tag=!random2,tag=!measuring,tag=!brushing,tag=!wt_destroy,tag=!foliage_ing,tag=!checkered,tag=!filling_outline] run function worldtool:fill

execute unless entity @s[tag=!cloning_wt,tag=!hollow,tag=!random1,tag=!random2,tag=!foliage_ing,tag=!filling_outline] run function worldtool:load2_fill.tags1
execute unless entity @s[tag=!measuring,tag=!brushing,tag=!coloring,tag=!replacing,tag=!wt_destroy,tag=!checkered,tag=!cmdlist_search,tag=!cmdlist,tag=!cmd_block_fill] run function worldtool:load2_fill.tags2