execute if entity @s[tag=keep] run tellraw @p {"text":"Set keep to true","color":"green","italic":true}

execute if entity @s[tag=!filtered,tag=!filtered_reversed,tag=!keep] run tellraw @p [{"text":"[Copy]  ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Copy the selected region"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/start_clone_player"}},{"text":"[Move]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Move the selected region"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/start_clone_player.move"}},{"text":"[Filtered: Off...]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Filter by a certain block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/filter/select_clone_filtered"}},{"text":"[Rotate...]  ","color":"blue","hoverEvent":{"action":"show_text","value":"Change the rotation of the clone"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone_rotate/select"}},{"text":"[Keep: Off]  ","color":"green","hoverEvent":{"action":"show_text","value":"Keep existing blocks in clone destination"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/set_keep"}},{"text":"\n[At player]","underlined":true,"color":"light_purple","hoverEvent":{"action":"show_text","value":"Toggle between player position and setting a block position"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/clone_toggle_pos"}},{"text":"  [Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
execute if entity @s[tag=!keep] unless entity @s[tag=!filtered_reversed,tag=!filtered] run tellraw @p [{"text":"[Copy]  ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Copy the selected region"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/start_clone_player"}},{"text":"[Move]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Move the selected region"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/start_clone_player.move"}},{"text":"[Filtered: On]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Turn off the filter"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/filter/filter_off"}},{"text":"[Rotate...]  ","color":"blue","hoverEvent":{"action":"show_text","value":"Change the rotation of the clone"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone_rotate/select"}},{"text":"[Keep: Off]  ","color":"green","hoverEvent":{"action":"show_text","value":"Keep existing blocks in clone destination"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/set_keep"}},{"text":"\n[At player]","underlined":true,"color":"light_purple","hoverEvent":{"action":"show_text","value":"Toggle between player position and setting a block position"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/clone_toggle_pos"}},{"text":"  [Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]

execute if entity @s[tag=!filtered,tag=!filtered_reversed,tag=keep] run tellraw @p [{"text":"[Copy]  ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Copy the selected region"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/start_clone_player"}},{"text":"[Move]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Move the selected region"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/start_clone_player.move"}},{"text":"[Filtered: Off...]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Filter by a certain block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/filter/select_clone_filtered"}},{"text":"[Rotate...]  ","color":"blue","hoverEvent":{"action":"show_text","value":"Change the rotation of the clone"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone_rotate/select"}},{"text":"[Keep: On]  ","color":"green","hoverEvent":{"action":"show_text","value":"Keep existing blocks in clone destination"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/set_keep"}},{"text":"\n[At player]","underlined":true,"color":"light_purple","hoverEvent":{"action":"show_text","value":"Toggle between player position and setting a block position"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/clone_toggle_pos"}},{"text":"  [Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
execute if entity @s[tag=keep] unless entity @s[tag=!filtered_reversed,tag=!filtered] run tellraw @p [{"text":"[Copy]  ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Copy the selected region"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/start_clone_player"}},{"text":"[Move]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Move the selected region"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/start_clone_player.move"}},{"text":"[Filtered: On]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Turn off the filter"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/filter/filter_off"}},{"text":"[Rotate...]  ","color":"blue","hoverEvent":{"action":"show_text","value":"Change the rotation of the clone"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone_rotate/select"}},{"text":"[Keep: On]  ","color":"green","hoverEvent":{"action":"show_text","value":"Keep existing blocks in clone destination"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/set_keep"}},{"text":"\n[At player]","underlined":true,"color":"light_purple","hoverEvent":{"action":"show_text","value":"Toggle between player position and setting a block position"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/clone/clone_toggle_pos"}},{"text":"  [Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]