# Called recursively and by worldtool:technical/common/tellraw_builder/load
# Loops and concatenates the finished string

$data modify storage worldtool:storage Temp.Builder.FinishedString.string set value '$(string)$(next)'
data remove storage worldtool:storage Temp.Builder.FinishedList[0]

data modify storage worldtool:storage Temp.Builder.FinishedString.next set from storage worldtool:storage Temp.Builder.FinishedList[0]
execute if data storage worldtool:storage Temp.Builder.FinishedList[0] run \
    function worldtool:technical/common/tellraw_builder/concat with storage worldtool:storage Temp.Builder.FinishedString
