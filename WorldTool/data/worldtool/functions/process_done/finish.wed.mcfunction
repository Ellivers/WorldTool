# When the current action is done
# Checks for the different actions. Even displays "block" in singular if it only affected one block ;)
say CAMOOOOON
execute unless score $blocksplaced worldtool matches 1 if entity @s[tag=!wt_clone,tag=!measuring,tag=!brushing,tag=!cmdlist,tag=!cmdlist_search] run tellraw @a[tag=wt_started_function,limit=1] ["Placed ",{"score":{"name":"$blocksplaced","objective":"worldtool"}}," blocks"]
execute unless score $blocksplaced worldtool matches 1 if entity @s[tag=wt_clone] run tellraw @a[tag=wt_started_function,limit=1] ["Cloned ",{"score":{"name":"$blocksplaced","objective":"worldtool"}}," blocks"]
execute if entity @s[tag=measuring] run tellraw @a[tag=wt_started_function,limit=1] ["This area contains ",{"score":{"name":"$blocksplaced","objective":"worldtool"}}," of the specified block(s)"]

execute if score $blocksplaced worldtool matches 1 if entity @s[tag=!wt_clone,tag=!measuring,tag=!brushing] run tellraw @a[tag=wt_started_function,limit=1] "Placed 1 block"
execute if score $blocksplaced worldtool matches 1 if entity @s[tag=wt_clone] run tellraw @a[tag=wt_started_function,limit=1] "Cloned 1 block"

execute if entity @s[tag=cmdlist] run tellraw @a[tag=wt_started_function,limit=1] {"nbt":"Text","storage":"worldtool:cmdlist","interpret":true}
execute if entity @s[tag=cmdlist_search] run tellraw @a[tag=wt_started_function,limit=1] "No command block chain starts were found"
