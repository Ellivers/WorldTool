# Called by various (shape preview) functions
# Re-centers the temporary point offset to the middle

data modify storage worldtool:storage Temp.OffsetPos set value [0.0d, 0.0d, 0.0d]
