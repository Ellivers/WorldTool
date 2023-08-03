# Called by worldtool:technical\common\tellraw_builder\build
# Sets the component for regular text

$data modify storage worldtool:storage Temp.Builder.FinishedList append value \
    '{"nbt":"Translation.\\\\\\\\"$(translate)\\\\\\\\"","storage":"worldtool:storage","color":"$(color)","bold":$(bold)}'
