execute unless predicate worldtool:brush/flat if predicate worldtool:brush/load_block run function worldtool:brush/brushes/replace/load
execute unless predicate worldtool:brush/flat unless predicate worldtool:brush/load_block run function worldtool:brush/brushes/main/select_area
execute if predicate worldtool:brush/flat if predicate worldtool:brush/load_block run function worldtool:brush/brushes/replace/load
execute if predicate worldtool:brush/flat unless predicate worldtool:brush/load_block run function worldtool:brush/brushes/flat/load1
