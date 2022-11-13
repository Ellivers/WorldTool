# Called by worldtool:technical/save_load/setup_save_process/get_slot_amounts and worldtool:technical/save_load/setup_save_process/setup
# Gets the amount of slots necessary for one area

scoreboard players operation #sizeX worldtool = #pos2xt worldtool
scoreboard players operation #sizeX worldtool -= #pos1xt worldtool
scoreboard players operation #sizeY worldtool = #pos2yt worldtool
scoreboard players operation #sizeY worldtool -= #pos1yt worldtool
scoreboard players operation #sizeZ worldtool = #pos2zt worldtool
scoreboard players operation #sizeZ worldtool -= #pos1zt worldtool
execute if score #sizeX worldtool matches ..-1 run scoreboard players operation #sizeX worldtool *= #-1 worldtool
execute if score #sizeY worldtool matches ..-1 run scoreboard players operation #sizeY worldtool *= #-1 worldtool
execute if score #sizeZ worldtool matches ..-1 run scoreboard players operation #sizeZ worldtool *= #-1 worldtool
scoreboard players add #sizeX worldtool 1
scoreboard players add #sizeY worldtool 1
scoreboard players add #sizeZ worldtool 1

scoreboard players operation #amountX worldtool = #sizeX worldtool
scoreboard players operation #amountX worldtool /= $templateSizeLimit worldtool
scoreboard players operation #temp worldtool = #sizeX worldtool
scoreboard players operation #temp worldtool %= $templateSizeLimit worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #amountX worldtool 1
scoreboard players operation #amountY worldtool = #sizeY worldtool
scoreboard players operation #amountY worldtool /= $templateSizeLimit worldtool
scoreboard players operation #temp worldtool = #sizeY worldtool
scoreboard players operation #temp worldtool %= $templateSizeLimit worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #amountY worldtool 1
scoreboard players operation #amountZ worldtool = #sizeZ worldtool
scoreboard players operation #amountZ worldtool /= $templateSizeLimit worldtool
scoreboard players operation #temp worldtool = #sizeZ worldtool
scoreboard players operation #temp worldtool %= $templateSizeLimit worldtool
execute unless score #temp worldtool matches 0 run scoreboard players add #amountZ worldtool 1

scoreboard players operation #resultAmount worldtool = #amountX worldtool
scoreboard players operation #resultAmount worldtool *= #amountY worldtool
scoreboard players operation #resultAmount worldtool *= #amountZ worldtool

scoreboard players operation #amount worldtool += #resultAmount worldtool
