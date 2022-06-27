# Called by worldtool:pick_block/other/attempt1_2 and worldtool:pick_block/other/attempt2
# Finishes the block picking

scoreboard players operation #ID_temp worldtool = @s wt.ID

clone ~1 ~ ~ ~1 ~-1 ~ ~ ~-1 ~ replace

execute as @a[tag=wt.pick_block.brush] if score @s wt.ID = #ID_temp worldtool at @s run function worldtool:ui_brush/select_block/selected/from_pick_block

function #worldtool:addon/pick_block/finish

kill @s
