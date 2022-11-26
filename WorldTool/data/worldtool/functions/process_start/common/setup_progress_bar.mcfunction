# Called by worldtool:process_start/common/start
# Sets up the progress bar

bossbar set worldtool:progress color pink
bossbar set worldtool:progress value 0
bossbar set worldtool:progress name {"nbt":"Translation.\"progress.default\"","storage": "worldtool:storage"}
bossbar set worldtool:progress players @s
bossbar set worldtool:progress visible true

tag @s add wt.no_message
function worldtool:measure/area/load

execute store result bossbar worldtool:progress max run scoreboard players get #totalArea worldtool
data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-1]
execute if data storage worldtool:storage Temp.Process{ID:"worldtool:load_area"} store result bossbar worldtool:progress max if data storage worldtool:storage Processes[-1].Input.AreaList[].TemplateList[]

function #worldtool:hooks/process_start/common/setup_progress_bar
