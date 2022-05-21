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
scoreboard players operation #ID_temp worldtool = @s wt.ID
execute if entity @s as @e[type=minecraft:marker,tag=worldtool,tag=wt.reciever_marker] if score @s wt.ID = #ID_temp worldtool run data modify storage worldtool:storage Temp.Pos set from entity @s Pos
execute store result score #boxBPos1x worldtool run data get storage worldtool:storage Temp.Pos[0]
execute store result score #boxBPos1y worldtool run data get storage worldtool:storage Temp.Pos[1]
execute store result score #boxBPos1z worldtool run data get storage worldtool:storage Temp.Pos[2]

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
scoreboard players operation #boxADistanceX1 worldtool = #boxAPos1x worldtool
scoreboard players operation #boxADistanceX1 worldtool -= #boxACenterX worldtool
execute if score #boxADistanceX1 worldtool matches ..-1 run scoreboard players operation #boxADistanceX1 worldtool *= #-1 worldtool
scoreboard players operation #boxADistanceY1 worldtool = #boxAPos1y worldtool
scoreboard players operation #boxADistanceY1 worldtool -= #boxACenterY worldtool
execute if score #boxADistanceY1 worldtool matches ..-1 run scoreboard players operation #boxADistanceY1 worldtool *= #-1 worldtool
scoreboard players operation #boxADistanceZ1 worldtool = #boxAPos1z worldtool
scoreboard players operation #boxADistanceZ1 worldtool -= #boxACenterZ worldtool
execute if score #boxADistanceZ1 worldtool matches ..-1 run scoreboard players operation #boxADistanceZ1 worldtool *= #-1 worldtool

scoreboard players operation #boxADistanceX2 worldtool = #boxAPos2x worldtool
scoreboard players operation #boxADistanceX2 worldtool -= #boxACenterX worldtool
execute if score #boxADistanceX2 worldtool matches ..-1 run scoreboard players operation #boxADistanceX2 worldtool *= #-1 worldtool
scoreboard players operation #boxADistanceY2 worldtool = #boxAPos2y worldtool
scoreboard players operation #boxADistanceY2 worldtool -= #boxACenterY worldtool
execute if score #boxADistanceY2 worldtool matches ..-1 run scoreboard players operation #boxADistanceY2 worldtool *= #-1 worldtool
scoreboard players operation #boxADistanceZ2 worldtool = #boxAPos2z worldtool
scoreboard players operation #boxADistanceZ2 worldtool -= #boxACenterZ worldtool
execute if score #boxADistanceZ2 worldtool matches ..-1 run scoreboard players operation #boxADistanceZ2 worldtool *= #-1 worldtool

scoreboard players set #boxADistanceX worldtool 1
scoreboard players operation #boxADistanceX worldtool > #boxADistanceX1 worldtool
scoreboard players operation #boxADistanceX worldtool > #boxADistanceX2 worldtool
scoreboard players set #boxADistanceY worldtool 1
scoreboard players operation #boxADistanceY worldtool > #boxADistanceY1 worldtool
scoreboard players operation #boxADistanceY worldtool > #boxADistanceY2 worldtool
scoreboard players set #boxADistanceZ worldtool 1
scoreboard players operation #boxADistanceZ worldtool > #boxADistanceZ1 worldtool
scoreboard players operation #boxADistanceZ worldtool > #boxADistanceZ2 worldtool

# Box B
scoreboard players operation #boxBDistanceX1 worldtool = #boxBPos1x worldtool
scoreboard players operation #boxBDistanceX1 worldtool -= #boxBCenterX worldtool
execute if score #boxBDistanceX1 worldtool matches ..-1 run scoreboard players operation #boxBDistanceX1 worldtool *= #-1 worldtool
scoreboard players operation #boxBDistanceY1 worldtool = #boxBPos1y worldtool
scoreboard players operation #boxBDistanceY1 worldtool -= #boxBCenterY worldtool
execute if score #boxBDistanceY1 worldtool matches ..-1 run scoreboard players operation #boxBDistanceY1 worldtool *= #-1 worldtool
scoreboard players operation #boxBDistanceZ1 worldtool = #boxBPos1z worldtool
scoreboard players operation #boxBDistanceZ1 worldtool -= #boxBCenterZ worldtool
execute if score #boxBDistanceZ1 worldtool matches ..-1 run scoreboard players operation #boxBDistanceZ1 worldtool *= #-1 worldtool

scoreboard players operation #boxBDistanceX2 worldtool = #boxBPos2x worldtool
scoreboard players operation #boxBDistanceX2 worldtool -= #boxBCenterX worldtool
execute if score #boxBDistanceX2 worldtool matches ..-1 run scoreboard players operation #boxBDistanceX2 worldtool *= #-1 worldtool
scoreboard players operation #boxBDistanceY2 worldtool = #boxBPos2y worldtool
scoreboard players operation #boxBDistanceY2 worldtool -= #boxBCenterY worldtool
execute if score #boxBDistanceY2 worldtool matches ..-1 run scoreboard players operation #boxBDistanceY2 worldtool *= #-1 worldtool
scoreboard players operation #boxBDistanceZ2 worldtool = #boxBPos2z worldtool
scoreboard players operation #boxBDistanceZ2 worldtool -= #boxBCenterZ worldtool
execute if score #boxBDistanceZ2 worldtool matches ..-1 run scoreboard players operation #boxBDistanceZ2 worldtool *= #-1 worldtool

scoreboard players set #boxBDistanceX worldtool 1
scoreboard players operation #boxBDistanceX worldtool > #boxBDistanceX1 worldtool
scoreboard players operation #boxBDistanceX worldtool > #boxBDistanceX2 worldtool
scoreboard players set #boxBDistanceY worldtool 1
scoreboard players operation #boxBDistanceY worldtool > #boxBDistanceY1 worldtool
scoreboard players operation #boxBDistanceY worldtool > #boxBDistanceY2 worldtool
scoreboard players set #boxBDistanceZ worldtool 1
scoreboard players operation #boxBDistanceZ worldtool > #boxBDistanceZ1 worldtool
scoreboard players operation #boxBDistanceZ worldtool > #boxBDistanceZ2 worldtool

# Checks if the two boxes are overlapping

scoreboard players operation #evenSizeX worldtool = #offsetX worldtool
scoreboard players operation #evenSizeX worldtool %= #2 worldtool
scoreboard players operation #evenSizeY worldtool = #offsetY worldtool
scoreboard players operation #evenSizeY worldtool %= #2 worldtool
scoreboard players operation #evenSizeZ worldtool = #offsetZ worldtool
scoreboard players operation #evenSizeZ worldtool %= #2 worldtool

scoreboard players operation #newPos1x worldtool = #boxACenterX worldtool
scoreboard players operation #newPos1x worldtool += #boxADistanceX worldtool
scoreboard players operation #newPos1x worldtool += #boxBDistanceX worldtool
scoreboard players operation #newPos1y worldtool = #boxACenterY worldtool
scoreboard players operation #newPos1y worldtool += #boxADistanceY worldtool
scoreboard players operation #newPos1y worldtool += #boxBDistanceY worldtool
scoreboard players operation #newPos1z worldtool = #boxACenterZ worldtool
scoreboard players operation #newPos1z worldtool += #boxADistanceZ worldtool
scoreboard players operation #newPos1z worldtool += #boxBDistanceZ worldtool
execute if score #evenSizeX worldtool matches 1 run scoreboard players remove #newPos1x worldtool 1
execute if score #evenSizeY worldtool matches 1 run scoreboard players remove #newPos1y worldtool 1
execute if score #evenSizeZ worldtool matches 1 run scoreboard players remove #newPos1z worldtool 1

scoreboard players operation #newPos2x worldtool = #boxACenterX worldtool
scoreboard players operation #newPos2x worldtool -= #boxADistanceX worldtool
scoreboard players operation #newPos2x worldtool -= #boxBDistanceX worldtool
scoreboard players operation #newPos2y worldtool = #boxACenterY worldtool
scoreboard players operation #newPos2y worldtool -= #boxADistanceY worldtool
scoreboard players operation #newPos2y worldtool -= #boxBDistanceY worldtool
scoreboard players operation #newPos2z worldtool = #boxACenterZ worldtool
scoreboard players operation #newPos2z worldtool -= #boxADistanceZ worldtool
scoreboard players operation #newPos2z worldtool -= #boxBDistanceZ worldtool
execute if score #evenSizeX worldtool matches 1 run scoreboard players add #newPos2x worldtool 1
execute if score #evenSizeY worldtool matches 1 run scoreboard players add #newPos2y worldtool 1
execute if score #evenSizeZ worldtool matches 1 run scoreboard players add #newPos2z worldtool 1

scoreboard players set #insideX worldtool 0
scoreboard players set #insideY worldtool 0
scoreboard players set #insideZ worldtool 0
execute if score #boxBCenterX worldtool <= #newPos1x worldtool if score #boxBCenterX worldtool >= #newPos2x worldtool run scoreboard players set #insideX worldtool 1
execute if score #boxBCenterY worldtool <= #newPos1y worldtool if score #boxBCenterY worldtool >= #newPos2y worldtool run scoreboard players set #insideY worldtool 1
execute if score #boxBCenterZ worldtool <= #newPos1z worldtool if score #boxBCenterZ worldtool >= #newPos2z worldtool run scoreboard players set #insideZ worldtool 1

execute if score #insideX worldtool matches 1 if score #insideY worldtool matches 1 if score #insideZ worldtool matches 1 run function worldtool:ui/warning/clone_overlap
