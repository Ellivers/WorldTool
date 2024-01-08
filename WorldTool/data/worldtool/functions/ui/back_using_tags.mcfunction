# Called by various functions
# Goes back to the previous menu using its tag

execute if entity @s[tag=wt.menu.queue] run function worldtool:ui/queue/leave

execute if entity @s[tag=wt.menu.general.page1] run function worldtool:ui_general/click/backto
execute if entity @s[tag=wt.menu.general.page2] run function worldtool:ui_general/click/backto
execute if entity @s[tag=wt.menu.options] run function worldtool:ui_general/click/backto
execute if entity @s[tag=wt.menu.settings] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.general.selection] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.adjust_positions] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.clone.rotate] run function worldtool:ui_general/clone/menu
execute if entity @s[tag=wt.menu.clone.select_mode] run function worldtool:ui_general/clone/menu
execute if entity @s[tag=wt.pick_block.other] run function worldtool:ui/select_block/select
execute if entity @s[tag=wt.menu.randomize.set_source.pos1] run function worldtool:ui_general/back/from_inworld_select
execute if entity @s[tag=wt.menu.randomize.set_source.pos2] run function worldtool:ui_general/randomize/set_source/pos1
execute if entity @s[tag=wt.menu.randomize.set_source.confirm] run function worldtool:ui_general/randomize/set_source/pos2
execute if entity @s[tag=wt.menu.randomize.set_source.wait] run function worldtool:ui_general/randomize/set_source/back
execute if entity @s[tag=wt.menu.paste_area] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.select_paste_pos] run function worldtool:ui_general/back/from_inworld_select
execute if entity @s[tag=wt.select_block.other.replace] run function worldtool:ui/select_block/replace/display
execute if entity @s[tag=wt.menu.shell.side_settings] run function worldtool:ui_general/shell/menu
execute if entity @s[tag=wt.menu.greenery.select_source] run function worldtool:ui_general/greenery/menu
execute if entity @s[tag=wt.menu.brush.greenery.select_source] run function worldtool:ui_brush/select_plant_source/selected
execute if entity @s[tag=wt.menu.shatter.tile_drops_error] run function worldtool:ui_general/shatter/menu
execute if entity @s[tag=wt.menu.smooth.settings] run function worldtool:ui_general/smooth/menu
execute if entity @s[tag=wt.menu.brush.plugin_brushes] run function worldtool:ui_brush/select_brush/menu
execute if entity @s[tag=wt.menu.brush.selection] run function worldtool:ui_brush/options/menu
execute if entity @s[tag=wt.menu.shapes.selection] run function worldtool:ui_shapes/options/menu

function #worldtool:hooks/ui/back_using_tags

execute if entity @s[tag=wt.menu.two_block_query.1] run function worldtool:ui/return.back
execute if entity @s[tag=wt.menu.two_block_query.2,tag=!wt.two_block_query.primary] run function worldtool:ui_general/two_block_query/display/1
execute if entity @s[tag=wt.menu.two_block_query.2,tag=wt.two_block_query.primary] run function worldtool:ui/return.back
