# Outputs text

data modify storage worldtool:storage Temp.Builder set value {FinishedList:[],FinishedString:{string:"["}}
$data modify storage worldtool:storage Temp.Builder.InputList set value $(data)

function worldtool:technical/common/tellraw_builder/build

data modify storage worldtool:storage Temp.Builder.FinishedString.next set from storage worldtool:storage Temp.Builder.FinishedList[0]
function worldtool:technical/common/tellraw_builder/concat with storage worldtool:storage Temp.Builder.FinishedString
function worldtool:technical/common/tellraw_builder/last with storage worldtool:storage Temp.Builder.FinishedString

tellraw @s {"nbt":"Temp.Builder.FinishedString.string","storage": "worldtool:storage","interpret": true}
