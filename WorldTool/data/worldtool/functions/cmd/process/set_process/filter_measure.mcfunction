# Called manually
# Sets the data for the filter measure process

data modify storage worldtool:storage CmdProcess.DisplayName set value '{"nbt":"Translation.\\"process.filter_measure\\"","storage":"worldtool:storage"}'
data modify storage worldtool:storage CmdProcess.ID set value "worldtool:filter_measure"
data modify storage worldtool:storage CmdProcess.Tags set value ["wt.process.filter_measure","wt.message.measure","wt.message.non_default"]
