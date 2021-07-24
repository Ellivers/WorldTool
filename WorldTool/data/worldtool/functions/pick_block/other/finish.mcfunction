# Called by worldtool:pick_block/other/attempt1_2 and worldtool:pick_block/other/attempt2
# Finishes the block picking

clone ~1 ~ ~ ~1 ~-1 ~ ~ ~-1 ~ replace

execute if entity @s[tag=wt.pick_block.brush] run function worldtool:ui_brush/pick_block/picked

function #worldtool:addon/pick_block/finish

kill @s
