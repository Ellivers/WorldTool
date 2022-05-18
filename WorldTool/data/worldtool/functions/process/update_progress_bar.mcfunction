# Called by worldtool:process/load
# Updates the progress bar's value

scoreboard players remove #blocksChecked worldtool 1

scoreboard players operation #totalBlocksChecked worldtool += #blocksChecked worldtool
execute store result bossbar worldtool:progress value run scoreboard players get #totalBlocksChecked worldtool
