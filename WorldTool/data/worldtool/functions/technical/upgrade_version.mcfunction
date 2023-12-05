# Called by worldtool:technical/load
# Updates some stuff from previous versions

# Version-specific upgrade code

# ...

# Log message
execute if score $version worldtool < $latestVersion worldtool run data modify storage worldtool:storage Temp.LogEntry set value {Type:"info",Message:'{"nbt":"Translation.\\"info.log.version_upgraded\\"","storage":"worldtool:storage"}'}
execute if score $version worldtool > $latestVersion worldtool run data modify storage worldtool:storage Temp.LogEntry set value {Type:"warning",Message:'{"nbt":"Translation.\\"warning.log.version_downgraded\\"","storage":"worldtool:storage","color":"gold"}'}
function worldtool:technical/cmd/log/add
