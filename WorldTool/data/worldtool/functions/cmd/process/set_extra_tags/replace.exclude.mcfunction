# Called manually
# Sets the replace process to "exclude" mode

execute if data storage worldtool:storage CmdProcess{Tags:["wt.process.replace.normal"]} run data remove storage worldtool:storage CmdProcess.Tags[-1]
data modify storage worldtool:storage CmdProcess.Tags append value "wt.process.replace.exclude"
