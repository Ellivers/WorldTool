# Called manually
# Sets the data for the clone process (no rotation)

data modify storage worldtool:storage CmdProcess.DisplayName set value '{"nbt":"Translation.\\"process.clone\\"","storage":"worldtool:storage"}'
data modify storage worldtool:storage CmdProcess.ID set value "worldtool:clone"
data modify storage worldtool:storage CmdProcess.Tags set value ["wt.process.clone","wt.from_bottom","wt.message.clone","wt.message.non_default","wt.process.clone.rotate"]
