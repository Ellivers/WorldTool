# Called manually
# Sets the filter_measure process to "normal" mode

execute if data storage worldtool:storage CmdProcess{Tags:["wt.process.filter_measure.exclude"]} run data remove storage worldtool:storage CmdProcess.Tags[-1]
data modify storage worldtool:storage CmdProcess.Tags append value "wt.process.filter_measure.normal"