# Called by worldtool:ui_general/clone/select_destination/selected, worldtool:ui_general/clone/menu and worldtool:ui_general/clone/start_rotated
# Starts the cloning process

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.clone\\"","storage":"worldtool:storage"}',Id:"worldtool:clone",Tags:["wt.process.clone","wt.from_bottom","wt.message.clone","wt.message.non_default"]}

execute if entity @s[tag=wt.clone.move] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.move"

execute if entity @s[tag=!wt.clone.rotate] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.normal"
execute if entity @s[tag=wt.clone.rotate] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.rotate"

execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.filter.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.clone.filter.exclude"

scoreboard players operation #ID_temp worldtool = @s wt.ID

function worldtool:technical/common/temp_entity
data modify storage worldtool:storage Processes[0].Positions.CloneDestination set from entity d43b8e30-51cc-4da0-918a-60a557ae676f Pos
kill d43b8e30-51cc-4da0-918a-60a557ae676f

function worldtool:process_start/common/load

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
