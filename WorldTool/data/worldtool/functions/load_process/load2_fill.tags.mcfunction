# This function splits up the processes into two main lists to reduce the amount of commands run

# Remove the 'ticking' tag which is there to make sure a one-block area doesn't get marked as "done"
tag @s remove ticking
execute if entity @s[tag=wt_fill] run function worldtool:processes/fill/fill

execute if score $progressBar worldtool matches 1.. run function worldtool:load_process/load2_fill.pb
scoreboard players reset #blockschecked worldtool

execute unless entity @s[tag=!cloning_wt,tag=!hollow,tag=!random1,tag=!random2,tag=!wt_greenery,tag=!filling_outline,tag=!wt_circlegen] run function worldtool:load_process/load2_fill.tags1
execute unless entity @s[tag=!measuring,tag=!brushing,tag=!coloring,tag=!replacing,tag=!wt_destroy,tag=!checkered,tag=!cmdlist_search,tag=!cmdlist,tag=!cmd_block_fill] run function worldtool:load_process/load2_fill.tags2
