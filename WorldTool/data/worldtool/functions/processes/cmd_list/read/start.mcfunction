tag @s remove cmdlist_search
tag @s add cmdlist
data merge storage worldtool:cmdlist {Text:[]}
function worldtool:processes/cmd_list/read/write
execute if block ~ ~ ~ #worldtool:cmd_block_chain_start[facing=down] run function worldtool:processes/cmd_list/read/-y
execute if block ~ ~ ~ #worldtool:cmd_block_chain_start[facing=west] run function worldtool:processes/cmd_list/read/-x
execute if block ~ ~ ~ #worldtool:cmd_block_chain_start[facing=north] run function worldtool:processes/cmd_list/read/-z
execute if block ~ ~ ~ #worldtool:cmd_block_chain_start[facing=up] run function worldtool:processes/cmd_list/read/y
execute if block ~ ~ ~ #worldtool:cmd_block_chain_start[facing=east] run function worldtool:processes/cmd_list/read/x
execute if block ~ ~ ~ #worldtool:cmd_block_chain_start[facing=south] run function worldtool:processes/cmd_list/read/z