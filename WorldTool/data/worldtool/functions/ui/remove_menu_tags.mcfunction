# Called by various functions
# Removes menu tags set in the UI

execute if entity @s[tag=wt.menu.queue] run function worldtool:ui/queue/leave

tag @s remove wt.menu.general.page1
tag @s remove wt.menu.general.page2
tag @s remove wt.menu.general.plugins
tag @s remove wt.menu.general.selection
tag @s remove wt.menu.options
tag @s remove wt.menu.settings
tag @s remove wt.menu.adjust_positions
tag @s remove wt.menu.replace
tag @s remove wt.menu.clone
tag @s remove wt.menu.clone.filter
tag @s remove wt.menu.clone.rotate
tag @s remove wt.menu.clone.select_mode
tag @s remove wt.menu.randomize
tag @s remove wt.menu.randomize.set_source.pos1
tag @s remove wt.menu.randomize.set_source.pos2
tag @s remove wt.menu.randomize.set_source.confirm
tag @s remove wt.menu.randomize.exclude
tag @s remove wt.randomize.exclude
tag @s remove wt.menu.randomize.replace
tag @s remove wt.two_block_query.text.randomize_exclude
tag @s remove wt.menu.two_block_query.1
tag @s remove wt.menu.two_block_query.2
tag @s remove wt.menu.two_block_query.3
tag @s remove wt.two_block_query.secondary
tag @s remove wt.two_block_query.primary
tag @s remove wt.two_block_query.locked_rule
tag @s remove wt.two_block_query.text.replace
tag @s remove wt.two_block_query.text.primary.standard
tag @s remove wt.two_block_query.text.secondary.standard
tag @s remove wt.two_block_query.text.greenery_replace
tag @s remove wt.menu.measure
tag @s remove wt.menu.measure.filter
tag @s remove wt.two_block_query.text.filter
tag @s remove wt.pick_block.primary
tag @s remove wt.pick_block.secondary
tag @s remove wt.dont_start_input
tag @s remove wt.particles
tag @s remove wt.allow_input
tag @s remove wt.menu.copy_area
tag @s remove wt.menu.paste_area
tag @s remove wt.menu.select_paste_pos
tag @s remove wt.menu.checkered
tag @s remove wt.menu.checkered.replace
tag @s remove wt.menu.shell
tag @s remove wt.menu.shell.side_settings
tag @s remove wt.menu.shell.inner_block
tag @s remove wt.menu.outline
tag @s remove wt.menu.greenery
tag @s remove wt.menu.greenery.select_source
tag @s remove wt.menu.brush.greenery.select_source
tag @s remove wt.menu.greenery.replace
tag @s remove wt.menu.shatter
tag @s remove wt.menu.shatter.replace
tag @s remove wt.menu.shatter.tile_drops_error
tag @s remove wt.menu.repeat
tag @s remove wt.menu.repeat.filter
tag @s remove wt.menu.smooth
tag @s remove wt.menu.smooth.filter
tag @s remove wt.menu.smooth.settings
tag @s remove wt.menu.structure_corners
tag @s remove wt.select_block.other
tag @s remove wt.select_block.other.replace
tag @s remove wt.menu.shapes
tag @s remove wt.menu.shapes.options
tag @s remove wt.menu.shapes.adjust_position
tag @s remove wt.menu.brush.plugin_brushes

tag @s remove wt.setup.fill
tag @s remove wt.setup.replace
tag @s remove wt.setup.clone
tag @s remove wt.setup.filter_measure
tag @s remove wt.setup.randomization_source
tag @s remove wt.setup.checkered
tag @s remove wt.setup.shell
tag @s remove wt.setup.outline
tag @s remove wt.setup.greenery
tag @s remove wt.setup.shatter
tag @s remove wt.setup.repeat
tag @s remove wt.setup.smooth

tag @s remove wt.menu.settings.blocks_per_tick.page.1
tag @s remove wt.menu.settings.blocks_per_tick.page.2
tag @s remove wt.menu.settings.blocks_per_tick.page.plugin
tag @s remove wt.menu.settings.list.1
tag @s remove wt.menu.settings.list.2

tag @s remove wt.reopen_after_reload

function #worldtool:hooks/ui/remove_menu_tags
