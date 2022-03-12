# Called by worldtool:process_start/common/start
# Give the process the selected blocks

execute unless entity @s[tag=!wt.primary,tag=!wt.both] run clone ~1 ~ ~ ~1 ~ ~ 27451 1 19 replace move
execute unless entity @s[tag=!wt.secondary,tag=!wt.both] run clone ~-1 ~ ~ ~-1 ~ ~ 27449 1 19 replace move

# Commented out cause general menus are not supposed to close after starting a process
#function worldtool:block_test/stop
