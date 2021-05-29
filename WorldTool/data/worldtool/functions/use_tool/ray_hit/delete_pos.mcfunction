# Called by various functions 
# Removes forceload-able positions
execute if score @s worldtool matches 1.. run forceload remove ~ ~
kill @s
