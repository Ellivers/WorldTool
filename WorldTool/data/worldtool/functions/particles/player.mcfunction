# Called by worldtool:particles/display
# Commands for player particle displaying

execute unless entity @s[tag=!wt.menu.clone,tag=!wt.menu.clone.select_destination,tag=!wt.menu.clone.rotate,tag=!wt.menu.clone.filter] run function worldtool:particles/clone_preview/load
execute unless entity @s[tag=!wt.menu.randomize.set_source.pos1,tag=!wt.menu.randomize.set_source.pos2,tag=!wt.menu.randomize.set_source.confirm,tag=!wt.menu.randomize,tag=!wt.randomize.exclude] run function worldtool:particles/randomization_source_selection/display
execute unless entity @s[tag=!wt.menu.paste_area,tag=!wt.menu.select_paste_pos] run function worldtool:particles/paste_preview/load

function #worldtool:addon/particles/player
