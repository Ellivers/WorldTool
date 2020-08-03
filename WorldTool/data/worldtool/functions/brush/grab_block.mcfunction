# Called by worldtool:brush/use
# Picks a block (called "grabbing" in files)

# Stone underneath so the block doesn't fall if it's affected by gravity
setblock ~ 254 ~ minecraft:stone
# Clone the picked block up into the air
clone ~ ~ ~ ~ ~ ~ ~ 255 ~
execute positioned ~ 256 ~ align xyz run summon minecraft:arrow ~.5 ~ ~.5 {Tags:[switch_block_brush],Motion:[0d,-1d,0d]}
summon minecraft:area_effect_cloud ~ 255 ~ {Age: -2147483648, Duration: 2, WaitTime: -2147483648, Tags: ["brush_grab_marker"]}
# Waits 2 ticks so the arrow has time to land
schedule function worldtool:brush/grab_tick 2t