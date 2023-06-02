# Called by worldtool:use_tool/hold/remove_highlight
# Removes the highlighting entity

data modify entity @s AbsorptionAmount set value 0f
tp ~ -2000 ~
kill @s
