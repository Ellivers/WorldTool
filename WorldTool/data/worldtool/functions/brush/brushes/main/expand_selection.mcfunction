# Check if the selected area with the markers is big enough. This is to make brush sizes work.
execute if score $brush_out worldtool >= #brush_size_temp wt_brush_size run function worldtool:brush/brushes/main/expand_done
execute unless score $brush_out worldtool >= #brush_size_temp wt_brush_size run function worldtool:brush/brushes/main/expand_selection.2
