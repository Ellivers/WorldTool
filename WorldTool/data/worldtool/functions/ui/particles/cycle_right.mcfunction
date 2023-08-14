# Called by worldtool:ui/particles/display_option
# Cycles the particle indicator option to the right

tag @s[tag=!wt.helper_particles.in_menu,tag=!wt.helper_particles.always] add wt.temp
tag @s[tag=!wt.helper_particles.in_menu,tag=!wt.helper_particles.always] add wt.helper_particles.in_menu
tag @s[tag=wt.helper_particles.always] remove wt.helper_particles.always
tag @s[tag=wt.helper_particles.in_menu,tag=!wt.temp] add wt.helper_particles.always
tag @s[tag=wt.helper_particles.in_menu,tag=!wt.temp] remove wt.helper_particles.in_menu

tag @s remove wt.temp

function worldtool:ui/particles/back
