# Second list
execute if entity @s[tag=measuring] run function worldtool:measure/filtered
execute if entity @s[tag=brushing,tag=!coloring,tag=!replacing] run function worldtool:brush/paint
execute if entity @s[tag=coloring] run function worldtool:color
execute if entity @s[tag=replacing] run function worldtool:brush/replace/replace
execute if entity @s[tag=wt_destroy] run function worldtool:destroy/destroy
execute if entity @s[tag=checkered] run function worldtool:checkered/run
execute if entity @s[tag=cmdlist_search] run function worldtool:cmd_list/search/run
execute if entity @s[tag=cmdlist] run function worldtool:cmd_list/read/run
execute if entity @s[tag=cmd_block_fill] run function worldtool:cmd_block_fill/run
