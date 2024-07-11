# Called by worldtool:process_start/shapes/get_corners/load
# Gets the corners for a specific orientation

scoreboard players operation #pos1xt worldtool += #radius worldtool
scoreboard players operation #pos1zt worldtool += #radius worldtool

scoreboard players operation #pos2xt worldtool -= #radius worldtool
scoreboard players operation #pos2yt worldtool -= #length worldtool
scoreboard players operation #pos2zt worldtool -= #radius worldtool
