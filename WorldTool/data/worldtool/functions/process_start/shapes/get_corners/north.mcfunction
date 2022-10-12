# Called by worldtool:process_start/shapes/get_corners/load
# Gets the corners for a specific orientation

scoreboard players operation #pos1xt worldtool -= #radius worldtool
scoreboard players operation #pos1yt worldtool -= #radius worldtool

scoreboard players operation #pos2xt worldtool += #radius worldtool
scoreboard players operation #pos2yt worldtool += #radius worldtool
scoreboard players operation #pos2zt worldtool -= #length worldtool
