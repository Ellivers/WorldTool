# Called by worldtool:particles/shape_preview/sphere/load
# Previews a sphere

function worldtool:particles/shape_preview/circle_horizontal/rotation/load
function worldtool:particles/shape_preview/circle_vertical/load
execute rotated ~90 ~ run function worldtool:particles/shape_preview/circle_vertical/load
