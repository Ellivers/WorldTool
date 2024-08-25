# Called by worldtool:technical/load
# Sets up the blocks per tick rate for the different processes

execute unless data storage worldtool:storage BlocksPerTick run data modify storage worldtool:storage BlocksPerTick.Processes set value []
execute unless data storage worldtool:storage BlocksPerTick.Preset run data modify storage worldtool:storage BlocksPerTick.Preset set value "high"

execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:fill"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:fill",Value:1500}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:fill"}].Presets set value {Low:600,Medium:1000,High:1500}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:replace"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:replace",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:replace"}].Presets set value {Low:600,Medium:2000,High:4000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:filter_measure"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:filter_measure",Value:3500}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:filter_measure"}].Presets set value {Low:600,Medium:1800,High:3500}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:clone"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:clone",Value:2100}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:clone"}].Presets set value {Low:600,Medium:1800,High:2100}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:randomization_source"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:randomization_source",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:randomization_source"}].Presets set value {Low:600,Medium:2000,High:4000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:randomize"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:randomize",Value:3700}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:randomize"}].Presets set value {Low:600,Medium:2000,High:3700}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:save_area"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:save_area",Value:400000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:save_area"}].Presets set value {Low:115000,Medium:230000,High:400000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:load_area"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:load_area",Value:10}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:load_area"}].Presets set value {Low:3,Medium:6,High:10}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:checkered"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:checkered",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:checkered"}].Presets set value {Low:600,Medium:2000,High:4000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:shell"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:shell",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:shell"}].Presets set value {Low:600,Medium:2000,High:4000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:outline"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:outline",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:outline"}].Presets set value {Low:600,Medium:2000,High:4000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:greenery"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:greenery",Value:3000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:greenery"}].Presets set value {Low:600,Medium:1500,High:3000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:greenery_brush"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:greenery_brush",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:greenery_brush"}].Presets set value {Low:600,Medium:2000,High:4000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:shatter"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:shatter",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:shatter"}].Presets set value {Low:600,Medium:2000,High:4000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:repeat"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:repeat",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:repeat"}].Presets set value {Low:600,Medium:2000,High:4000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:smooth"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:smooth",Value:3000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:smooth"}].Presets set value {Low:600,Medium:1500,High:3000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:command_list"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:command_list",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:command_list"}].Presets set value {Low:600,Medium:2000,High:4000}

execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:paint"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:paint",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:paint"}].Presets set value {Low:600,Medium:2000,High:4000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:place"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:place",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:place"}].Presets set value {Low:600,Medium:2000,High:4000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:replace_brush"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:replace_brush",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:replace_brush"}].Presets set value {Low:600,Medium:2000,High:4000}

execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:cylinder"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:cylinder",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:cylinder"}].Presets set value {Low:600,Medium:2000,High:4000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:cone"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:cone",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:cone"}].Presets set value {Low:600,Medium:2000,High:4000}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:sphere"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:sphere",Value:4000}
data modify storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:sphere"}].Presets set value {Low:600,Medium:2000,High:4000}

function #worldtool:hooks/setup_blocks_per_tick
