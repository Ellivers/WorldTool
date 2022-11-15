# Called by worldtool:process/load
# Updates the progress bar's value

scoreboard players remove #blocksChecked worldtool 1

function #worldtool:hooks/process/adjust_progress_bar_value

scoreboard players operation #totalBlocksChecked worldtool += #blocksChecked worldtool
execute store result bossbar worldtool:progress value run scoreboard players get #totalBlocksChecked worldtool
