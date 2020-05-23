#Check if the selected area with the markers is big enough. This is to make brush sizes work.
scoreboard players add $brush_out worldtool 1
execute at @a if score @s wt_ID = @p wt_ID if score $brush_out worldtool >= @p wt_brush_size at @s run function worldtool:brush/brushes/paint/load_paint
execute at @a if score @s wt_ID = @p wt_ID unless score $brush_out worldtool >= @p wt_brush_size at @s run function worldtool:brush/brushes/paint/expand_selection.2