# This function splits up the.. functions (they need a better name) into two main lists to reduce the amount of commands run

# Remove the 'ticking' tag which is there to make sure a one-block area doesn't get marked as "done"
tag @s remove ticking
execute if entity @s[tag=!cmd_block_fill,tag=!cloning_wt,tag=!cmdlist_search,tag=!cmdlist,tag=!hollow,tag=!random1,tag=!random2,tag=!measuring,tag=!brushing,tag=!wt_destroy,tag=!foliage_ing,tag=!checkered,tag=!filling_outline] run function worldtool:fill

execute unless entity @s[tag=!cloning_wt,tag=!hollow,tag=!random1,tag=!random2,tag=!foliage_ing,tag=!filling_outline] run function worldtool:load_function/load2_fill.tags1
execute unless entity @s[tag=!measuring,tag=!brushing,tag=!coloring,tag=!replacing,tag=!wt_destroy,tag=!checkered,tag=!cmdlist_search,tag=!cmdlist,tag=!cmd_block_fill] run function worldtool:load_function/load2_fill.tags2