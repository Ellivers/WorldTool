data remove storage rx.playerdb:io player.data
$data modify storage rx.playerdb:io player.data set from storage worldtool:storage Database[{uuid:$(UUID)}].data

execute if data storage rx.playerdb:io player.data run return 1

execute unless data storage worldtool:storage Database run data modify storage worldtool:storage Database set value []
$data modify storage worldtool:storage Database append value {uuid:$(UUID),data:{}}
data modify storage rx.playerdb:io player.data set value {}
