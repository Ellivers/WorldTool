# Checks if the executing entity owns the current process

scoreboard players set #success worldtool 0

execute store result score #temp worldtool run data get storage worldtool:storage Processes[-1].Owner

execute if score #temp worldtool = @s wt.ID run scoreboard players set #success worldtool 1
