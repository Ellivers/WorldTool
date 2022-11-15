# Called by preset setting functions and blocks per tick adjusting functions
# Goes back to the previous page the user was on

execute if entity @s[tag=wt.menu.settings.blocks_per_tick.page.1] run function worldtool:ui/settings/blocks_per_tick/page1
execute if entity @s[tag=wt.menu.settings.blocks_per_tick.page.2] run function worldtool:ui/settings/blocks_per_tick/page2
execute if entity @s[tag=wt.menu.settings.blocks_per_tick.page.plugin] run function worldtool:ui/settings/blocks_per_tick/plugin_page
