#Check if the selected area with the markers is big enough. This is to make brush sizes work.
scoreboard players add $brush_out worldtool 1
execute at @a if score @s wt_ID = @p wt_ID if score $brush_out worldtool >= @p wt_brush_size at @s run function worldtool:brush/brushes/paint/load_paint
execute if score #X worldtool matches 1 at @a if score @s wt_ID = @p wt_ID unless score $brush_out worldtool >= @p wt_brush_size at @s run function worldtool:brush/brushes/flat/expand_yz
execute if score #Y worldtool matches 1 at @a if score @s wt_ID = @p wt_ID unless score $brush_out worldtool >= @p wt_brush_size at @s run function worldtool:brush/brushes/flat/expand_xz
execute if score #Z worldtool matches 1 at @a if score @s wt_ID = @p wt_ID unless score $brush_out worldtool >= @p wt_brush_size at @s run function worldtool:brush/brushes/flat/expand_xy