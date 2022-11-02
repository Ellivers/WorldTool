# Called by worldtool:process_start/variables
# Sets veriables used by the shell process

execute store result score #temp worldtool run data get storage worldtool:storage Processes[-1].Input.SideSize
execute if score #temp worldtool matches ..0 run scoreboard players set #temp worldtool 1
scoreboard players remove #temp worldtool 1

scoreboard players set #pos1xt worldtool -2147483648
scoreboard players operation #pos1xt worldtool > #pos1xo worldtool
scoreboard players operation #pos1xt worldtool > #pos2xo worldtool
scoreboard players set #pos1yt worldtool -2147483648
scoreboard players operation #pos1yt worldtool > #pos1yo worldtool
scoreboard players operation #pos1yt worldtool > #pos2yo worldtool
scoreboard players set #pos1zt worldtool -2147483648
scoreboard players operation #pos1zt worldtool > #pos1zo worldtool
scoreboard players operation #pos1zt worldtool > #pos2zo worldtool

scoreboard players set #pos2xt worldtool 2147483647
scoreboard players operation #pos2xt worldtool < #pos1xo worldtool
scoreboard players operation #pos2xt worldtool < #pos2xo worldtool
scoreboard players set #pos2yt worldtool 2147483647
scoreboard players operation #pos2yt worldtool < #pos1yo worldtool
scoreboard players operation #pos2yt worldtool < #pos2yo worldtool
scoreboard players set #pos2zt worldtool 2147483647
scoreboard players operation #pos2zt worldtool < #pos1zo worldtool
scoreboard players operation #pos2zt worldtool < #pos2zo worldtool

# i = inner
scoreboard players operation #pos1xi worldtool = #pos1xt worldtool
scoreboard players operation #pos1xi worldtool -= #temp worldtool
scoreboard players operation #pos1yi worldtool = #pos1yt worldtool
scoreboard players operation #pos1yi worldtool -= #temp worldtool
scoreboard players operation #pos1zi worldtool = #pos1zt worldtool
scoreboard players operation #pos1zi worldtool -= #temp worldtool

scoreboard players operation #pos2xi worldtool = #pos2xt worldtool
scoreboard players operation #pos2xi worldtool += #temp worldtool
scoreboard players operation #pos2yi worldtool = #pos2yt worldtool
scoreboard players operation #pos2yi worldtool += #temp worldtool
scoreboard players operation #pos2zi worldtool = #pos2zt worldtool
scoreboard players operation #pos2zi worldtool += #temp worldtool
