# Called by worldtool:technical/load
# Sets up the blocks per tick rate for the different processes

execute unless data storage worldtool:storage BlocksPerTick run data modify storage worldtool:storage BlocksPerTick.Processes set value []
execute unless data storage worldtool:storage BlocksPerTick.Preset run data modify storage worldtool:storage BlocksPerTick.Preset set value "high"

execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:fill"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:fill",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:replace"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:replace",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:filter_measure"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:filter_measure",Value:3500,Presets:{Low:600,Medium:1800,High:3500}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:clone"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:clone",Value:2100,Presets:{Low:600,Medium:1800,High:2100}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:randomization_source"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:randomization_source",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:randomize"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:randomize",Value:3700,Presets:{Low:600,Medium:2000,High:3700}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:save_area"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:save_area",Value:400000,Presets:{Low:115000,Medium:230000,High:400000}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:load_area"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:load_area",Value:10,Presets:{Low:3,Medium:6,High:10}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:checkered"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:checkered",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:shell"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:shell",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}

execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:paint"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:paint",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:place"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:place",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:replace_brush"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:replace_brush",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}

execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:cylinder"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:cylinder",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:cone"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:cone",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}
execute unless data storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:sphere"}] run data modify storage worldtool:storage BlocksPerTick.Processes append value {ID:"worldtool:sphere",Value:4000,Presets:{Low:600,Medium:2000,High:4000}}

function #worldtool:addon/setup_blocks_per_tick
