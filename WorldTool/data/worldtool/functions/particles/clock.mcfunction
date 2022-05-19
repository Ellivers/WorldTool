# Scheduled by itself and called by worldtool:technical/load
# Clock for particles

execute as @e[type=#worldtool:particles,tag=wt.particles] at @s run function worldtool:particles/display

# That's 8 ticks. 8 ticks of delay between each particle update. 8 ticks. In seconds, that's 8 divided by 20, which is 0.4 seconds. That's 0.4 seconds of wait, delay, cooldown. An interval of 0.4 seconds.
schedule function worldtool:particles/clock 8t
