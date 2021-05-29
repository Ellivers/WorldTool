# Called by worldtool:process_start/common/start
# Give the process the selected blocks

execute unless entity @s[tag=!wt.primary,tag=!wt.both] run clone ~1 ~ ~ ~1 ~ ~ 0 1 13 replace move
execute unless entity @s[tag=!wt.secondary,tag=!wt.both] run clone ~-1 ~ ~ ~-1 ~ ~ 2 1 13 replace move

#function worldtool:block_test/stop
