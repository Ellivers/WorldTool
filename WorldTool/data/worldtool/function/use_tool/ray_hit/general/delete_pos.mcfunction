# Called by various functions 
# Removes forceload-able positions
execute if entity @s[tag=wt.can_forceload,scores={worldtool=1..}] run function worldtool:technical/common/forceload/remove
kill @s
