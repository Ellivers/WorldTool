# Called by worldtool:tick
# Does different things depending on which process was finished
bossbar set worldtool:progress visible false
scoreboard players set $displayLagWarning worldtool 1
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute if entity @s[tag=!from_cmd] as @a[tag=!random_2] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:fill_done
execute if entity @s[tag=!from_cmd] if score $functionRunning worldtool matches 1 as @a[tag=random_2] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui/random/place_done
execute if entity @s[tag=from_cmd] run function worldtool:cmd/done
