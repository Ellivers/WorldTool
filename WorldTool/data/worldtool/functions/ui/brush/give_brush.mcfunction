# Called by functions that change brush settings
# Gives the brush you are holding
execute if predicate worldtool:brushes/paint run loot spawn ~ ~ ~ loot worldtool:brushes/paint
execute if predicate worldtool:brushes/place run loot spawn ~ ~ ~ loot worldtool:brushes/place
execute if predicate worldtool:brushes/replace run loot spawn ~ ~ ~ loot worldtool:brushes/replace
execute if predicate worldtool:brushes/sphere run loot spawn ~ ~ ~ loot worldtool:brushes/sphere
execute if predicate worldtool:brushes/circle run loot spawn ~ ~ ~ loot worldtool:brushes/circle
execute if predicate worldtool:brushes/flat_paint run loot spawn ~ ~ ~ loot worldtool:brushes/flat_paint
execute if predicate worldtool:brushes/flat_place run loot spawn ~ ~ ~ loot worldtool:brushes/flat_place