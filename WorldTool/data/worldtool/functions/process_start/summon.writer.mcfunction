# Called by worldtool:process_start/summon
# Commands executed as the writer

scoreboard players operation @s wt.ID = #ID_temp worldtool

function worldtool:technical/common/remove_non_process_tags

function #worldtool:addon/process_start/writer_setup
