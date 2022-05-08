# Called by worldtool:ui_general/clone/start
# Sees if the source area and destination are overlapping, and if so,
# asks the user if they want to continue.

scoreboard players set #success worldtool 1

function worldtool:ui_general/clone/get_rotation_offset/load

# Gets the corner coordinates for the two boxes

# Box A
scoreboard players operation #boxAPos1x worldtool = #pos1xt worldtool
scoreboard players operation #boxAPos1y worldtool = #pos1yt worldtool
scoreboard players operation #boxAPos1z worldtool = #pos1zt worldtool
scoreboard players operation #boxAPos2x worldtool = #pos2xt worldtool
scoreboard players operation #boxAPos2y worldtool = #pos2yt worldtool
scoreboard players operation #boxAPos2z worldtool = #pos2zt worldtool

# Box B
execute store result score #boxBPos1x worldtool run data get storage worldtool:storage Processes[0].Positions.CloneDestination[0]
execute store result score #boxBPos1y worldtool run data get storage worldtool:storage Processes[0].Positions.CloneDestination[1]
execute store result score #boxBPos1z worldtool run data get storage worldtool:storage Processes[0].Positions.CloneDestination[2]

scoreboard players operation #boxBPos2x worldtool = #boxBPos1x worldtool
scoreboard players operation #boxBPos2y worldtool = #boxBPos1y worldtool
scoreboard players operation #boxBPos2z worldtool = #boxBPos1z worldtool

scoreboard players operation #boxBPos2x worldtool += #offsetX worldtool
scoreboard players operation #boxBPos2y worldtool += #offsetY worldtool
scoreboard players operation #boxBPos2z worldtool += #offsetZ worldtool

# Gets the center coordinates for the two boxes

# Box A
scoreboard players operation #boxACenterX worldtool = #baseOffsetX worldtool
scoreboard players operation #boxACenterX worldtool /= #2 worldtool
scoreboard players operation #boxACenterX worldtool += #boxAPos1x worldtool
scoreboard players operation #boxACenterY worldtool = #baseOffsetY worldtool
scoreboard players operation #boxACenterY worldtool /= #2 worldtool
scoreboard players operation #boxACenterY worldtool += #boxAPos1y worldtool
scoreboard players operation #boxACenterZ worldtool = #baseOffsetZ worldtool
scoreboard players operation #boxACenterZ worldtool /= #2 worldtool
scoreboard players operation #boxACenterZ worldtool += #boxAPos1z worldtool

# Box B
scoreboard players operation #boxBCenterX worldtool = #offsetX worldtool
scoreboard players operation #boxBCenterX worldtool /= #2 worldtool
scoreboard players operation #boxBCenterX worldtool += #boxBPos1x worldtool
scoreboard players operation #boxBCenterY worldtool = #offsetY worldtool
scoreboard players operation #boxBCenterY worldtool /= #2 worldtool
scoreboard players operation #boxBCenterY worldtool += #boxBPos1y worldtool
scoreboard players operation #boxBCenterZ worldtool = #offsetZ worldtool
scoreboard players operation #boxBCenterZ worldtool /= #2 worldtool
scoreboard players operation #boxBCenterZ worldtool += #boxBPos1z worldtool

# Gets the maximum distance to the center for the two boxes

# Box A
scoreboard players operation #boxADistanceX worldtool = #boxAPos2x worldtool
scoreboard players operation #boxADistanceX worldtool -= #boxACenterX worldtool
execute if score #boxADistanceX worldtool matches ..-1 run scoreboard players operation #boxADistanceX worldtool *= #-1 worldtool
scoreboard players operation #boxADistanceY worldtool = #boxAPos2y worldtool
scoreboard players operation #boxADistanceY worldtool -= #boxACenterY worldtool
execute if score #boxADistanceY worldtool matches ..-1 run scoreboard players operation #boxADistanceY worldtool *= #-1 worldtool
scoreboard players operation #boxADistanceZ worldtool = #boxAPos2z worldtool
scoreboard players operation #boxADistanceZ worldtool -= #boxACenterZ worldtool
execute if score #boxADistanceZ worldtool matches ..-1 run scoreboard players operation #boxADistanceZ worldtool *= #-1 worldtool

# Box B
scoreboard players operation #boxBDistanceX worldtool = #boxBPos2x worldtool
scoreboard players operation #boxBDistanceX worldtool -= #boxBCenterX worldtool
execute if score #boxBDistanceX worldtool matches ..-1 run scoreboard players operation #boxBDistanceX worldtool *= #-1 worldtool
scoreboard players operation #boxBDistanceY worldtool = #boxBPos2y worldtool
scoreboard players operation #boxBDistanceY worldtool -= #boxBCenterY worldtool
execute if score #boxBDistanceY worldtool matches ..-1 run scoreboard players operation #boxBDistanceY worldtool *= #-1 worldtool
scoreboard players operation #boxBDistanceZ worldtool = #boxBPos2z worldtool
scoreboard players operation #boxBDistanceZ worldtool -= #boxBCenterZ worldtool
execute if score #boxBDistanceZ worldtool matches ..-1 run scoreboard players operation #boxBDistanceZ worldtool *= #-1 worldtool

# Checks if the two boxes are overlapping

scoreboard players operation #evenOffsetX worldtool = #offsetX worldtool
scoreboard players operation #evenOffsetX worldtool %= #2 worldtool
scoreboard players operation #evenOffsetY worldtool = #offsetY worldtool
scoreboard players operation #evenOffsetY worldtool %= #2 worldtool
scoreboard players operation #evenOffsetZ worldtool = #offsetZ worldtool
scoreboard players operation #evenOffsetZ worldtool %= #2 worldtool

scoreboard players operation #newPos1x worldtool = #boxACenterX worldtool
scoreboard players operation #newPos1x worldtool += #boxADistanceX worldtool
scoreboard players operation #newPos1x worldtool += #boxBDistanceX worldtool
scoreboard players operation #newPos1y worldtool = #boxACenterY worldtool
scoreboard players operation #newPos1y worldtool += #boxADistanceY worldtool
scoreboard players operation #newPos1y worldtool += #boxBDistanceY worldtool
scoreboard players operation #newPos1z worldtool = #boxACenterZ worldtool
scoreboard players operation #newPos1z worldtool += #boxADistanceZ worldtool
scoreboard players operation #newPos1z worldtool += #boxBDistanceZ worldtool
execute if score #evenOffsetX worldtool matches 1 run scoreboard players remove #newPos1x worldtool 1
execute if score #evenOffsetY worldtool matches 1 run scoreboard players remove #newPos1y worldtool 1
execute if score #evenOffsetZ worldtool matches 1 run scoreboard players remove #newPos1z worldtool 1

scoreboard players operation #newPos2x worldtool = #boxACenterX worldtool
scoreboard players operation #newPos2x worldtool -= #boxADistanceX worldtool
scoreboard players operation #newPos2x worldtool -= #boxBDistanceX worldtool
scoreboard players operation #newPos2y worldtool = #boxACenterY worldtool
scoreboard players operation #newPos2y worldtool -= #boxADistanceY worldtool
scoreboard players operation #newPos2y worldtool -= #boxBDistanceY worldtool
scoreboard players operation #newPos2z worldtool = #boxACenterZ worldtool
scoreboard players operation #newPos2z worldtool -= #boxADistanceZ worldtool
scoreboard players operation #newPos2z worldtool -= #boxBDistanceZ worldtool
execute if score #evenOffsetX worldtool matches 1 run scoreboard players add #newPos2x worldtool 1
execute if score #evenOffsetY worldtool matches 1 run scoreboard players add #newPos2y worldtool 1
execute if score #evenOffsetZ worldtool matches 1 run scoreboard players add #newPos2z worldtool 1

scoreboard players set #insideX worldtool 0
scoreboard players set #insideY worldtool 0
scoreboard players set #insideZ worldtool 0
execute if score #boxBCenterX worldtool <= #newPos1x worldtool if score #boxBCenterX worldtool >= #newPos2x worldtool run scoreboard players set #insideX worldtool 1
execute if score #boxBCenterY worldtool <= #newPos1y worldtool if score #boxBCenterY worldtool >= #newPos2y worldtool run scoreboard players set #insideY worldtool 1
execute if score #boxBCenterZ worldtool <= #newPos1z worldtool if score #boxBCenterZ worldtool >= #newPos2z worldtool run scoreboard players set #insideZ worldtool 1

execute if score #insideX worldtool matches 1 if score #insideY worldtool matches 1 if score #insideZ worldtool matches 1 run function worldtool:ui/warning/clone_overlap
