# Called by worldtool:ui_general/menus/options/settings
# Unistalls WorldTool

scoreboard objectives remove worldtool
scoreboard objectives remove wt.use_coas
scoreboard objectives remove wt.drop_coas
scoreboard objectives remove wt.ID
scoreboard objectives remove wt.brush_size
scoreboard objectives remove wt.chance
scoreboard objectives remove wt.queue_pos
scoreboard objectives remove wt.diameter
scoreboard objectives remove wt.height
scoreboard objectives remove wt.precision
scoreboard objectives remove wt.degrees
scoreboard objectives remove wt.rotX
scoreboard objectives remove wt.rotY

execute as @e[type=minecraft:marker,tag=worldtool,tag=wt.can_forceload] if score @s worldtool matches 1.. at @s run forceload remove ~ ~
kill @e[tag=worldtool]

tellraw @a[tag=wt.user] {"nbt":"Translation.\"info.uninstall\"","storage": "worldtool:storage","color": "green"}

execute as @a run function worldtool:technical/common/remove_tags.player

data remove storage worldtool:storage {}
