tellraw @s {"text":"\n\n\nTop secret control panel\n","bold":true,"underlined":true,"color":"light_purple"}
tellraw @s [{"text":"[Move selection]  ","color":"aqua","clickEvent":{"action":"run_command","value":"/function worldtool:ui/ctrl_panel/select_move"}},{"text":"[Reset]","color":"red","clickEvent":{"action":"run_command","value":"/function worldtool:ui/ctrl_panel/reset"}}]