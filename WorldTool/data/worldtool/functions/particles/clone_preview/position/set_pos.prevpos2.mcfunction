execute store result score #tempPreviewPos2X worldtool run data get entity @s Pos[0]
execute store result score #tempPreviewPos2Y worldtool run data get entity @s Pos[1]
execute store result score #tempPreviewPos2Z worldtool run data get entity @s Pos[2]

execute if score #tempPos1X worldtool > #tempPos2X worldtool run scoreboard players operation #tempPreviewPos2X worldtool -= #tempDifferenceX worldtool
execute if score #tempPos1Y worldtool > #tempPos2Y worldtool run scoreboard players operation #tempPreviewPos2Y worldtool -= #tempDifferenceY worldtool
execute if score #tempPos1Z worldtool > #tempPos2Z worldtool run scoreboard players operation #tempPreviewPos2Z worldtool -= #tempDifferenceZ worldtool

execute if score #tempPos2X worldtool > #tempPos1X worldtool run scoreboard players operation #tempPreviewPos2X worldtool += #tempDifferenceX worldtool
execute if score #tempPos2Y worldtool > #tempPos1Y worldtool run scoreboard players operation #tempPreviewPos2Y worldtool += #tempDifferenceY worldtool
execute if score #tempPos2Z worldtool > #tempPos1Z worldtool run scoreboard players operation #tempPreviewPos2Z worldtool += #tempDifferenceZ worldtool

execute store result entity @s Pos[0] double 1 run scoreboard players get #tempPreviewPos2X worldtool
execute store result entity @s Pos[1] double 1 run scoreboard players get #tempPreviewPos2Y worldtool
execute store result entity @s Pos[2] double 1 run scoreboard players get #tempPreviewPos2Z worldtool

#tellraw @a [{"text": "X: "},{"score": {"name": "#tempPreviewPos2X","objective": "worldtool"}},{"text": " Y: "},{"score": {"name": "#tempPreviewPos2Y","objective": "worldtool"}},{"text": " Z: "},{"score": {"name": "#tempPreviewPos2Z","objective": "worldtool"}}]