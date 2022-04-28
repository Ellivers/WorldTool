# Called manually
# Sets the replace process to "normal" mode

execute if data storage worldtool:storage CmdProcess{Tags:["wt.process.replace.exclude"]} run data remove storage worldtool:storage CmdProcess.Tags[-1]
data modify storage worldtool:storage CmdProcess.Tags append value "wt.process.replace.normal"
