# Called by worldtool:use_shapes/block_updated
# Sets up the progress bar for use

bossbar set worldtool:progress color pink
bossbar set worldtool:progress value 0
bossbar set worldtool:progress name {"nbt":"Translation.\"progress.default\"","storage": "worldtool:storage"}
bossbar set worldtool:progress players @s
bossbar set worldtool:progress visible true

execute store result bossbar worldtool:progress max run data get storage worldtool:storage Processes[-1].Volume
