# Called by worldtool:process_start/common/start
# Sets up the progress bar

bossbar set worldtool:progress color pink
bossbar set worldtool:progress value 0
bossbar set worldtool:progress name {"nbt":"Translation.\"progress.default\"","storage": "worldtool:storage"}
bossbar set worldtool:progress players @s
bossbar set worldtool:progress visible true

tag @s add wt.no_message
function worldtool:measure/load

execute store result bossbar worldtool:progress max run scoreboard players get #totalArea worldtool

function #worldtool:addon/process_start/setup_progress_bar
