# Called by worldtool:technical\common\tellraw_builder\build
# Sets the component for text with a hover event

$data modify storage worldtool:storage Temp.Builder.FinishedList append value \
    '{"nbt":"Translation.\\\\\\\\"$(translate)\\\\\\\\"","storage":"worldtool:storage","color":"$(color)","bold":$(bold),\
    "hoverEvent":{"action":"show_text","contents":{"nbt":"Translation.\\"$(hover)\\"","storage":"worldtool:storage"}}}'
