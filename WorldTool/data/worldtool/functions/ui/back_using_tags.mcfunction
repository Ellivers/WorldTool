# Called by various functions
# Goes back to the previous menu using its tag

execute if entity @s[tag=wt.menu.queue] run function worldtool:ui/queue/leave

execute if entity @s[tag=wt.menu.general.p1] run function worldtool:ui_general/click/backto
execute if entity @s[tag=wt.menu.options] run function worldtool:ui_general/click/backto
execute if entity @s[tag=wt.menu.settings] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.adjust_positions] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.addons] run function worldtool:ui_general/options/menu
execute if entity @s[tag=wt.menu.clone.rotate] run function worldtool:ui_general/clone/menu
execute if entity @s[tag=wt.pick_block.brush] run function worldtool:ui_brush/select_block/select
execute if entity @s[tag=wt.menu.randomize.set_source.pos1] run function worldtool:ui_general/randomize/menu
execute if entity @s[tag=wt.menu.randomize.set_source.pos2] run function worldtool:ui_general/randomize/set_source/pos1
execute if entity @s[tag=wt.menu.randomize.set_source.confirm] run function worldtool:ui_general/randomize/set_source/pos2
execute if entity @s[tag=wt.menu.randomize.set_source.wait] run function worldtool:ui_general/randomize/set_source/back
execute if entity @s[tag=wt.menu.copy_area] run function worldtool:ui_general/options/save_load_area/cancel_copy

function #worldtool:addon/ui/back_using_tags

execute if entity @s[tag=wt.menu.two_block_query.2,tag=!wt.two_block_query.locked_rule] run function worldtool:ui/two_block_query/display/1
execute if entity @s[tag=wt.menu.two_block_query.2,tag=wt.two_block_query.locked_rule] run function worldtool:ui/return.back
execute if entity @s[tag=wt.menu.two_block_query.3,tag=!wt.two_block_query.primary] run function worldtool:ui/two_block_query/display/2
execute if entity @s[tag=wt.menu.two_block_query.3,tag=wt.two_block_query.primary] run function worldtool:ui/return.back
