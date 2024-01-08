# Called by worldtool:ui/select_block/replace/toggle_mode and worldtool:ui/select_block/selected/selected
# Applies replace mode changes

item modify entity @s[tag=wt.replace.normal,predicate=worldtool:tools/brush] weapon.mainhand worldtool:brush_tool/settings/replace/normal
item modify entity @s[tag=wt.replace.exclude,predicate=worldtool:tools/brush] weapon.mainhand worldtool:brush_tool/settings/replace/exclude
item modify entity @s[tag=wt.replace.normal,predicate=worldtool:tools/shapes] weapon.mainhand worldtool:shape_tool/settings/replace/normal
item modify entity @s[tag=wt.replace.exclude,predicate=worldtool:tools/shapes] weapon.mainhand worldtool:shape_tool/settings/replace/exclude
function #worldtool:hooks/ui/replace/set_mode
