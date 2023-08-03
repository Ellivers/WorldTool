# Called by worldtool:technical\common\tellraw_builder\build
# Sets the component for a button

$data modify storage worldtool:storage Temp.Builder.FinishedList append value \
    '{"nbt":"Translation.\\\\\\\\"$(translate)\\\\\\\\"","storage":"worldtool:storage","color":"$(color)","bold":$(bold),\
    "hoverEvent":{"action":"show_text","contents":{"nbt":"Translation.\\\\\\\\"$(hover)\\\\\\\\"","storage":"worldtool:storage"}},\
    "clickEvent":{"action":"run_command","value":"/function worldtool:$(click)"}}'
