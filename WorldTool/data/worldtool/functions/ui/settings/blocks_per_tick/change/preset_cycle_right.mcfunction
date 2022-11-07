# Called by a blocks per tick page
# Cycles the preset blocks per tick values

execute if data storage worldtool:storage BlocksPerTick{Preset:"maximum"} run tag @s add wt.temp
execute if data storage worldtool:storage BlocksPerTick{Preset:"maximum"} run data modify storage worldtool:storage BlocksPerTick.Preset set value "low"
execute if data storage worldtool:storage BlocksPerTick{Preset:"high"} run data modify storage worldtool:storage BlocksPerTick.Preset set value "maximum"
execute if data storage worldtool:storage BlocksPerTick{Preset:"medium"} run data modify storage worldtool:storage BlocksPerTick.Preset set value "high"
execute if entity @s[tag=!wt.temp] if data storage worldtool:storage BlocksPerTick{Preset:"low"} run data modify storage worldtool:storage BlocksPerTick.Preset set value "medium"

tag @s remove wt.temp

execute if data storage worldtool:storage BlocksPerTick{Preset:"custom"} run data modify storage worldtool:storage BlocksPerTick.Preset set value "high"

function worldtool:ui/settings/blocks_per_tick/back_to_page
