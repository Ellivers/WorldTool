# Called by worldtool:technical/tick/process
# Checks if the process is to end or not, and does some stuff before it ends

scoreboard players operation #ID_temp worldtool = @s wt.ID

execute if entity @s[tag=wt.process.filter_measure] run function worldtool:process/filter_measure/calculate
execute if entity @s[tag=wt.process.save_area] run function worldtool:technical/common/save_load/area_saved
execute if entity @s[tag=wt.process.load_area] run function worldtool:technical/common/save_load/area_loaded
execute if entity @s[tag=wt.process.smooth_calculate,tag=!wt.dont_transfer_data] run function worldtool:process_start/general/setup_process/smooth/calculation_transfer

function #worldtool:hooks/process/final_code

data remove storage worldtool:storage Temp
data modify storage worldtool:storage Temp.Tags set from entity @s Tags
execute if entity @s[tag=!wt.no_message] as @a if score @s wt.ID = #ID_temp worldtool run function worldtool:process_end/message

execute if entity @s[tag=!wt.dont_end] run function worldtool:process_end/end
execute if entity @s[tag=wt.dont_end] run function worldtool:process_end/continue
