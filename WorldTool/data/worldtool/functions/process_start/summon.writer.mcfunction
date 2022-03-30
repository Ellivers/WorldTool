# Called by worldtool:process_start/summon
# Commands executed as the writer

scoreboard players operation @s wt.ID = #ID_temp worldtool

data modify entity @s Tags append from storage worldtool:storage Processes[-1].Tags[]

execute if entity @s[tag=wt.from_bottom] run function worldtool:process_start/common/start_from_bottom

function #worldtool:addon/process_start/writer_setup
