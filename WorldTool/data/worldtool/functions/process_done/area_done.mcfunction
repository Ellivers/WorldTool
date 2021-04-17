# Called by worldtool:tick
# Does different things depending on which process was finished
bossbar set worldtool:progress visible false
scoreboard players set $displayLagWarning worldtool 1
scoreboard players operation #ID_temp worldtool = @s wt_ID
execute if entity @s[tag=!from_cmd,tag=!wt_no_done_message] as @a if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:process_done/finish
execute if entity @s[tag=!from_cmd,tag=!wt_no_reset] run function worldtool:process_done/reset_stuff
execute if entity @s[tag=wt_finish_other] if score $functionRunning worldtool matches 1 run function worldtool:process_done/other
execute if entity @s[tag=from_cmd] run function worldtool:cmd/load/done
