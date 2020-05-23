#When the current action is done
#Checks for the different actions. Even displays "block" in singular if you only affected one block ;)
execute unless score $blocksplaced worldtool matches 1 if entity @s[tag=!cloning_wt,tag=!measuring,tag=!brushing,tag=!cmdlist,tag=!cmdlist_search] run tellraw @p ["Filled ",{"score":{"name":"$blocksplaced","objective":"worldtool"}}," blocks"]
execute unless score $blocksplaced worldtool matches 1 if entity @s[tag=cloning_wt] run tellraw @p ["Cloned ",{"score":{"name":"$blocksplaced","objective":"worldtool"}}," blocks"]
execute if entity @s[tag=measuring] run tellraw @p ["This area contains ",{"score":{"name":"$blocksplaced","objective":"worldtool"}}," of the specified block(s)"]

execute if score $blocksplaced worldtool matches 1 if entity @s[tag=!cloning_wt,tag=!measuring,tag=!brushing] run tellraw @p "Filled 1 block"
execute if score $blocksplaced worldtool matches 1 if entity @s[tag=cloning_wt] run tellraw @p "Cloned 1 block"

execute if entity @s[tag=cmdlist] run tellraw @p {"nbt":"Text","storage":"worldtool:cmdlist","interpret":true}
execute if entity @s[tag=cmdlist_search] run tellraw @p "No command blocks were found"