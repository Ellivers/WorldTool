# Called by functions that remove forceload-able positions
execute if score @s worldtool matches 1.. run forceload remove ~ ~
kill @s