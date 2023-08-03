# Called recursively and by worldtool:technical/common/tellraw_builder/load
# Loops through everything that needs to be JSON-ified

execute unless data storage worldtool:storage Temp.Builder.InputList[0].color run \
    data modify storage worldtool:storage Temp.Builder.InputList[0].color set value "white"

execute unless data storage worldtool:storage Temp.Builder.InputList[0].bold run \
    data modify storage worldtool:storage Temp.Builder.InputList[0].bold set value "false"

# Buttons
execute if data storage worldtool:storage Temp.Builder.InputList[0].click \
    if data storage worldtool:storage Temp.Builder.InputList[0].hover run \
    function worldtool:technical/common/tellraw_builder/set/button with storage worldtool:storage Temp.Builder.InputList[0]

# Hover text
execute unless data storage worldtool:storage Temp.Builder.InputList[0].click \
    if data storage worldtool:storage Temp.Builder.InputList[0].hover run \
    function worldtool:technical/common/tellraw_builder/set/hover_text with storage worldtool:storage Temp.Builder.InputList[0]

# Text
execute unless data storage worldtool:storage Temp.Builder.InputList[0].click \
    unless data storage worldtool:storage Temp.Builder.InputList[0].hover run \
    function worldtool:technical/common/tellraw_builder/set/text with storage worldtool:storage Temp.Builder.InputList[0]

data remove storage worldtool:storage Temp.Builder.InputList[0]
execute if data storage worldtool:storage Temp.Builder.InputList[0] run \
    data modify storage worldtool:storage Temp.Builder.FinishedList append value ","
    
execute if data storage worldtool:storage Temp.Builder.InputList[0] run function worldtool:technical/common/tellraw_builder/build
