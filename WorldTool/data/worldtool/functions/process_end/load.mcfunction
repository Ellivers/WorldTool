# Called by worldtool:technical/tick
# Checks if the process is to end or not

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute if entity @s[tag=!wt.no_message] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:process_end/message

execute if entity @s[tag=!wt.dont_end] run function worldtool:process_end/end
execute if entity @s[tag=wt.dont_end] run function worldtool:process_end/continue
