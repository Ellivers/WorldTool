# Called by worldtool:use_shapes/get_corners/load
# Gets the corners for a specific orientation

scoreboard players operation #pos1yt worldtool -= #radius worldtool
scoreboard players operation #pos1zt worldtool -= #radius worldtool

scoreboard players operation #pos2yt worldtool += #radius worldtool
scoreboard players operation #pos2zt worldtool += #length worldtool
scoreboard players operation #pos2xt worldtool -= #radius worldtool
