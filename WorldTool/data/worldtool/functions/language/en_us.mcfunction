# Called by worldtool:language/reload, worldtool:technical/load, and a future options button for English
# Translations for English

data modify storage worldtool:storage Language set value "worldtool:en_us"

## General stuff ##

# Items
data modify storage worldtool:storage Translation."item.general.pos1" set value "Set Position 1"
data modify storage worldtool:storage Translation."item.general.pos2" set value "Set Position 2"
data modify storage worldtool:storage Translation."lore.general.normal.1" set value '["",{"keybind":"key.use","color":"gold"}," to set a position"]'
data modify storage worldtool:storage Translation."lore.general.normal.2" set value '["",{"keybind":"key.drop","color":"gold"}," to toggle which position to set"]'
data modify storage worldtool:storage Translation."lore.general.normal.3" set value '["",{"keybind":"key.sneak","color":"gold"}," + ",{"keybind":"key.drop","color":"gold"}," to open the menu"]'
data modify storage worldtool:storage Translation."lore.general.pick_block" set value '["",{"keybind":"key.use","color":"gold"}," to pick a block"]'
data modify storage worldtool:storage Translation."lore.general.clonepos" set value '["",{"keybind":"key.use","color":"gold"}," to select a destination"]'
data modify storage worldtool:storage Translation."item.general.clonepos" set value "Set Clone Destination"
data modify storage worldtool:storage Translation."item.general.pick_block" set value "Pick a Block"
data modify storage worldtool:storage Translation."item.brush" set value "Brush Tool"
data modify storage worldtool:storage Translation."lore.brush.1" set value '["",{"keybind":"key.use","color":"gold"}," to use the brush"]'
data modify storage worldtool:storage Translation."lore.brush.2" set value '["",{"keybind":"key.drop","color":"gold"}," to open the menu"]'
data modify storage worldtool:storage Translation."item.shapes" set value "Shape Generation Tool"

data modify storage worldtool:storage Translation."lore.selected_brush.none" set value "Selected brush: None"
data modify storage worldtool:storage Translation."lore.selected_brush.paint" set value "Selected brush: Paint"
data modify storage worldtool:storage Translation."lore.selected_brush.place" set value "Selected brush: Place"
data modify storage worldtool:storage Translation."lore.selected_brush.replace" set value "Selected brush: Replace"
data modify storage worldtool:storage Translation."lore.selected_brush.sphere" set value "Selected brush: Sphere"
data modify storage worldtool:storage Translation."lore.selected_brush.circle" set value "Selected brush: Circle"
data modify storage worldtool:storage Translation."lore.selected_brush.structure" set value "Selected brush: Paint"
data modify storage worldtool:storage Translation."item.shape_tool" set value "Shape Generation Tool"
data modify storage worldtool:storage Translation."lore.shape_tool.normal.1" set value '["",{"keybind":"key.use","color":"gold"}," to set a position"]'
data modify storage worldtool:storage Translation."lore.shape_tool.normal.2" set value '"& open the menu"'
data modify storage worldtool:storage Translation."lore.shape_tool.normal.3" set value '["",{"keybind":"key.drop","color":"gold"}," to open the menu"]'

data modify storage worldtool:storage Translation."lore.selected_block" set value "Selected block:"

# Progress bar
data modify storage worldtool:storage Translation."progress" set value "WorldTool Progress"

# Processes
data modify storage worldtool:storage Translation."process.fill" set value "Fill area"
data modify storage worldtool:storage Translation."process.replace" set value "Replace"
data modify storage worldtool:storage Translation."process.filter_measure" set value "Measure"
data modify storage worldtool:storage Translation."process.clone" set value "Clone"

# Info
data modify storage worldtool:storage Translation."info.uninstall" set value "WorldTool has been uninstalled"
data modify storage worldtool:storage Translation."info.affected_block" set value "1 affected block"
data modify storage worldtool:storage Translation."info.affected_blocks" set value '[{"score":{"name":"#blocksPlaced","objective":"worldtool"}}," affected blocks"]'
data modify storage worldtool:storage Translation."info.set_pos1" set value '["Set position 1 to ",{"score":{"name": "#pos1xt","objective": "worldtool"}}," ",{"score":{"name": "#pos1yt","objective": "worldtool"}}," ",{"score":{"name": "#pos1zt","objective": "worldtool"}}]'
data modify storage worldtool:storage Translation."info.set_pos2" set value '["Set position 2 to ",{"score":{"name": "#pos1xt","objective": "worldtool"}}," ",{"score":{"name": "#pos1yt","objective": "worldtool"}}," ",{"score":{"name": "#pos1zt","objective": "worldtool"}}]'
data modify storage worldtool:storage Translation."info.menu_closed" set value "Closed"
data modify storage worldtool:storage Translation."info.killed_process" set value "Killed any running process"
data modify storage worldtool:storage Translation."info.pick_block" set value "Click a block in the world to use"
data modify storage worldtool:storage Translation."info.select_clone_destination" set value "Select a destination to clone to"
data modify storage worldtool:storage Translation."info.log_title" set value "Log entries:"
data modify storage worldtool:storage Translation."info.log_cleared" set value "Cleared log."

# Errors
data modify storage worldtool:storage Translation."error.both_pos_duplicates" set value "Error: You appear to have duplicate positions set. Try setting both positions 1 and 2 again."
data modify storage worldtool:storage Translation."error.both_pos_missing" set value "Error: You appear to not have any set positions. Positions 1 and 2 are needed to access this function."
data modify storage worldtool:storage Translation."error.positions" set value "Error: You appear to have an incorrect amount of positions set. Try setting both positions 1 and 2 again."
data modify storage worldtool:storage Translation."error.pos1_duplicates" set value "Error: You appear to have a duplicated position 1. Try setting position 1 again."
data modify storage worldtool:storage Translation."error.pos1_missing" set value "Error: You appear to not have a position 1. Positions 1 and 2 are needed to access this function."
data modify storage worldtool:storage Translation."error.pos2_duplicates" set value "Error: You appear to have a duplicated position 2. Try setting position 2 again."
data modify storage worldtool:storage Translation."error.pos2_missing" set value "Error: You appear to not have a position 2. Positions 1 and 2 are needed to access this function."
data modify storage worldtool:storage Translation."error.process_running" set value "Error: Another process is currently running"
data modify storage worldtool:storage Translation."error.outside_world" set value "Error: At some point, the position ended up outside the world."
data modify storage worldtool:storage Translation."error.block_not_picked" set value "Error: The selected block could not be picked. Try using [Select a Block] instead."
data modify storage worldtool:storage Translation."error.no_process_selected" set value "Error: No process is currently selected."

# Warnings
data modify storage worldtool:storage Translation."warning.size" set value '["Warning: The size of the selected area is very big (",{"score":{"name": "#totalArea","objective": "worldtool"}}," blocks, to be exact). This may take a while to process. Do you wish to continue anyway?"]'
data modify storage worldtool:storage Translation."warning.clone_overlap" set value "Warning: The clone destination area overlaps with the source area. This is likely to mess up both areas. Do you wish to continue anyway?"

# Log messages
data modify storage worldtool:storage Translation."info.log.process_already_running.queue" set value '["Another process is already running. The process \\"",{"nbt":"CmdProcess.DisplayName","storage":"worldtool:storage","interpret":true},"\\" has been added to the queue."]'
data modify storage worldtool:storage Translation."info.log.process_already_running.cancel" set value '["Another process is already running. The process \\"",{"nbt":"CmdProcess.DisplayName","storage":"worldtool:storage","interpret":true},"\\" has been cancelled."]'
data modify storage worldtool:storage Translation."error.log.invalid_process" set value '[{"text":"[Error] Invalid process: \\"","color":"red"},{"nbt":"CmdProcess.DisplayName","storage":"worldtool:storage","interpret":true},"\\" has been cancelled."]'

# Common buttons
data modify storage worldtool:storage Translation."button.close.name" set value "[Close]"
data modify storage worldtool:storage Translation."button.close.description" set value "Cancel and close the menu"
data modify storage worldtool:storage Translation."button.back.name" set value "[⬅Back]"
data modify storage worldtool:storage Translation."button.back.description" set value "Go back to the previous menu"
data modify storage worldtool:storage Translation."button.back_cancel.description" set value "Cancel and go back to the previous menu"
data modify storage worldtool:storage Translation."button.ui_general.back.description" set value "Go back to page 1 of the main menu"
data modify storage worldtool:storage Translation."button.kill_process.name" set value "[Kill Process]"
data modify storage worldtool:storage Translation."button.kill_process.description" set value "Kill any currently running process"
data modify storage worldtool:storage Translation."button.select_block.name" set value "[Select a Block]"
data modify storage worldtool:storage Translation."button.select_block.description" set value "Select a block to use"
data modify storage worldtool:storage Translation."button.replace_block.replace.name" set value "[Select a Block to Replace]"
data modify storage worldtool:storage Translation."button.replace_block.replace.description" set value "Select a block to replace"
data modify storage worldtool:storage Translation."button.replace_block.dont_replace.name" set value "[Select a Block to Not Replace]"
data modify storage worldtool:storage Translation."button.replace_block.dont_replace.description" set value "Select a block to exclude"
data modify storage worldtool:storage Translation."button.replace_block.place.name" set value "[Select a Block to Replace With]"
data modify storage worldtool:storage Translation."button.replace_block.place.description" set value "Select a block to place"
data modify storage worldtool:storage Translation."button.pick_block.name" set value "[Pick Block...]"
data modify storage worldtool:storage Translation."button.pick_block.description" set value "Select a block in the world to use"
data modify storage worldtool:storage Translation."button.air.name" set value "(Air)"
data modify storage worldtool:storage Translation."button.air.description" set value "Air"
data modify storage worldtool:storage Translation."button.water.name" set value "(Water)"
data modify storage worldtool:storage Translation."button.water.description" set value "Water"
data modify storage worldtool:storage Translation."button.help.spacer" set value "                                                                            "
data modify storage worldtool:storage Translation."button.help.name" set value "[?]"
data modify storage worldtool:storage Translation."button.help.description" set value "Don't know what to do?"
data modify storage worldtool:storage Translation."button.question.name" set value "(?)"
data modify storage worldtool:storage Translation."button.normal.name" set value "[Normal...]"
data modify storage worldtool:storage Translation."button.normal.description" set value "Choose a block to filter/replace"
data modify storage worldtool:storage Translation."button.exclude.name" set value "[Exclude...]"
data modify storage worldtool:storage Translation."button.exclude.description" set value "Choose a block to NOT filter/replace"
data modify storage worldtool:storage Translation."button.to_replace.name" set value "[Select a block to replace]"
data modify storage worldtool:storage Translation."button.to_replace.description" set value "Choose which block you want to replace"
data modify storage worldtool:storage Translation."button.to_not_replace.name" set value "[Select a block to not replace]"
data modify storage worldtool:storage Translation."button.to_not_replace.description" set value "Choose which block you do not want to replace"
data modify storage worldtool:storage Translation."button.replace_with.name" set value "[Select a block to replace with]"
data modify storage worldtool:storage Translation."button.replace_with.description" set value "Choose which block you want to replace with"
data modify storage worldtool:storage Translation."button.to_filter.name" set value "[Select a block to filter with]"
data modify storage worldtool:storage Translation."button.to_filter.description" set value "Choose which block you want to filter with"
data modify storage worldtool:storage Translation."button.to_not_filter.name" set value "[Select a block to not filter with]"
data modify storage worldtool:storage Translation."button.to_not_filter.description" set value "Choose which block you do not want to filter with"
data modify storage worldtool:storage Translation."button.retry.name" set value "[Retry]"
data modify storage worldtool:storage Translation."button.retry.description" set value "Try again"
data modify storage worldtool:storage Translation."button.continue.name" set value "[Continue]"
data modify storage worldtool:storage Translation."button.continue.description" set value "Continue"

# Common option buttons
data modify storage worldtool:storage Translation."button.decrease.name" set value "- "
data modify storage worldtool:storage Translation."button.decrease.description" set value "Decrease"
data modify storage worldtool:storage Translation."button.increase.name" set value " +"
data modify storage worldtool:storage Translation."button.increase.description" set value "Increase"
data modify storage worldtool:storage Translation."button.left.name" set value "< "
data modify storage worldtool:storage Translation."button.left.description" set value "Left"
data modify storage worldtool:storage Translation."button.right.name" set value " >"
data modify storage worldtool:storage Translation."button.right.description" set value "Right"
data modify storage worldtool:storage Translation."button.enabled.name" set value "Enabled"
data modify storage worldtool:storage Translation."button.enabled.description" set value "Disable"
data modify storage worldtool:storage Translation."button.disabled.name" set value "Disabled"
data modify storage worldtool:storage Translation."button.disabled.description" set value "Enable"
data modify storage worldtool:storage Translation."button.reset.name" set value "[Reset]"
data modify storage worldtool:storage Translation."button.reset.description" set value "Reset to the default value"
data modify storage worldtool:storage Translation."button.reset_all.name" set value "[Reset All]"
data modify storage worldtool:storage Translation."button.reset_all.description" set value "Reset all settings to the default values"

# Other common stuff
data modify storage worldtool:storage Translation."axis.x" set value "X"
data modify storage worldtool:storage Translation."axis.y" set value "Y"
data modify storage worldtool:storage Translation."axis.z" set value "Z"


## Menus and processes ##

# Queue
data modify storage worldtool:storage Translation."error.queue.no_processes" set value "Error fetching process names: No queued processes could be found."
data modify storage worldtool:storage Translation."error.queue.invalid_process_count" set value "Error fetching process names: Could not find all queued processes."
data modify storage worldtool:storage Translation."info.queue.in_queue" set value "Another process is currently running. The process you have selected will run after the following processes have finished:"
data modify storage worldtool:storage Translation."info.queue.position" set value "Your queue position: "
data modify storage worldtool:storage Translation."info.queue.leave_warning" set value "Leaving this menu will also leave the queue"
data modify storage worldtool:storage Translation."button.queue.leave.name" set value "[⬅Leave]"
data modify storage worldtool:storage Translation."button.queue.leave.description" set value "Leave the queue and go back to the previous menu"
data modify storage worldtool:storage Translation."info.queue.from_command" set value " (Command)"

# General Tool
data modify storage worldtool:storage Translation."button.set_pos1.name" set value "[Set Position 1]"
data modify storage worldtool:storage Translation."button.set_pos1.description" set value "Set position 1 at your position"
data modify storage worldtool:storage Translation."button.set_pos2.name" set value "[Set Position 2]"
data modify storage worldtool:storage Translation."button.set_pos2.description" set value "Set position 2 at your position"
data modify storage worldtool:storage Translation."button.use.name" set value "[Use...]  "
data modify storage worldtool:storage Translation."button.use.description" set value "Open the main menu"
data modify storage worldtool:storage Translation."button.options.name" set value "[Options...]"
data modify storage worldtool:storage Translation."button.options.description" set value "Open the options menu"

data modify storage worldtool:storage Translation."button.replace.name" set value "[Replace...]"
data modify storage worldtool:storage Translation."button.replace.description" set value "Replace certain blocks with another block"

data modify storage worldtool:storage Translation."button.measure.name" set value "[Measure...]"
data modify storage worldtool:storage Translation."button.measure.description" set value "Various info such as block count, dimensions, and distance"
data modify storage worldtool:storage Translation."button.measure.all.name" set value "[All]"
data modify storage worldtool:storage Translation."button.measure.all.description" set value "Measure the dimensions of and count all blocks in the area"
data modify storage worldtool:storage Translation."button.measure.distance.name" set value "[Distance]"
data modify storage worldtool:storage Translation."button.measure.distance.description" set value "Get the distance between position 1 and position 2"
data modify storage worldtool:storage Translation."button.measure.filter.name" set value "[Filter...]"
data modify storage worldtool:storage Translation."button.measure.filter.description" set value "Measure the dimensions of and count specific blocks in the area"

data modify storage worldtool:storage Translation."button.clone.name" set value "[Clone...]"
data modify storage worldtool:storage Translation."button.clone.description" set value "Copy, move, and rotate the area"
data modify storage worldtool:storage Translation."button.clone.copy.player_pos" set value "[Copy]"
data modify storage worldtool:storage Translation."button.clone.copy.block_pos" set value "[Copy...]"
data modify storage worldtool:storage Translation."button.clone.copy.description" set value "Copy the area"
data modify storage worldtool:storage Translation."button.clone.move.player_pos" set value "[Move]"
data modify storage worldtool:storage Translation."button.clone.move.block_pos" set value "[Move...]"
data modify storage worldtool:storage Translation."button.clone.move.description" set value "Move the area"
data modify storage worldtool:storage Translation."button.clone.player_pos.name" set value "[Destination: At Player]"
data modify storage worldtool:storage Translation."button.clone.player_pos.description" set value "Switch to setting the destination at a block position"
data modify storage worldtool:storage Translation."button.clone.block_pos.name" set value "[Destination: At Block]"
data modify storage worldtool:storage Translation."button.clone.block_pos.description" set value "Switch to setting the destination at your position"
data modify storage worldtool:storage Translation."button.clone.filter.on" set value "[Filter: On]"
data modify storage worldtool:storage Translation."button.clone.filter.off" set value "[Filter: Off...]"
data modify storage worldtool:storage Translation."button.clone.filter.description" set value "Choose which block(s) to be cloned"
data modify storage worldtool:storage Translation."button.clone.rotate.name" set value "[Rotate...]"
data modify storage worldtool:storage Translation."button.clone.rotate.description" set value "Adjust the rotation of the clone"
data modify storage worldtool:storage Translation."button.clone.reset_rotation.description" set value "Reset the rotation"
data modify storage worldtool:storage Translation."button.clone.rotate.positive_x.name" set value "[+X]"
data modify storage worldtool:storage Translation."button.clone.rotate.positive_x.description" set value "Rotate 90° clockwise around the X axis"
data modify storage worldtool:storage Translation."button.clone.rotate.positive_y.name" set value "[+Y]"
data modify storage worldtool:storage Translation."button.clone.rotate.positive_y.description" set value "Rotate 90° clockwise around the Y axis"
data modify storage worldtool:storage Translation."button.clone.rotate.positive_z.name" set value "[+Z]"
data modify storage worldtool:storage Translation."button.clone.rotate.positive_z.description" set value "Rotate 90° clockwise around the Z axis"
data modify storage worldtool:storage Translation."button.clone.rotate.negative_x.name" set value "[-X]"
data modify storage worldtool:storage Translation."button.clone.rotate.negative_x.description" set value "Rotate 90° counterclockwise around the X axis"
data modify storage worldtool:storage Translation."button.clone.rotate.negative_y.name" set value "[-Y]"
data modify storage worldtool:storage Translation."button.clone.rotate.negative_y.description" set value "Rotate 90° counterclockwise around the Y axis"
data modify storage worldtool:storage Translation."button.clone.rotate.negative_z.name" set value "[-Z]"
data modify storage worldtool:storage Translation."button.clone.rotate.negative_z.description" set value "Rotate 90° counterclockwise around the Z axis"
data modify storage worldtool:storage Translation."button.clone.mirror.x.name" set value "[Mirror X]"
data modify storage worldtool:storage Translation."button.clone.mirror.x.description" set value "Mirror the area around the X axis"
data modify storage worldtool:storage Translation."button.clone.mirror.y.name" set value "[Mirror Y]"
data modify storage worldtool:storage Translation."button.clone.mirror.y.description" set value "Mirror the area around the Y axis"
data modify storage worldtool:storage Translation."button.clone.mirror.z.name" set value "[Mirror Z]"
data modify storage worldtool:storage Translation."button.clone.mirror.z.description" set value "Mirror the area around the Z axis"
data modify storage worldtool:storage Translation."info.clone.rotation" set value "Selected Rotation:"
data modify storage worldtool:storage Translation."info.clone.rotation.x" set value '["X: ",{"score":{"objective":"wt.rotX","name":"@s"}},"°"]'
data modify storage worldtool:storage Translation."info.clone.rotation.y" set value '["Y: ",{"score":{"objective":"wt.rotY","name":"@s"}},"°"]'
data modify storage worldtool:storage Translation."info.clone.rotation.z" set value '["Z: ",{"score":{"objective":"wt.rotZ","name":"@s"}},"°"]'
data modify storage worldtool:storage Translation."info.clone.mirror.x" set value "Mirror X"
data modify storage worldtool:storage Translation."info.clone.mirror.y" set value "Mirror Y"
data modify storage worldtool:storage Translation."info.clone.mirror.z" set value "Mirror Z"
data modify storage worldtool:storage Translation."info.cloned_block" set value "1 block cloned"
data modify storage worldtool:storage Translation."info.cloned_blocks" set value '[{"score":{"name":"#blocksPlaced","objective":"worldtool"}}," blocks cloned"]'

data modify storage worldtool:storage Translation."button.general.particles.off" set value "[Outline Selection: Off]"
data modify storage worldtool:storage Translation."button.general.particles.on" set value "[Outline Selection: On]"
data modify storage worldtool:storage Translation."button.general.particles.description" set value "Show lines around the selected area"
data modify storage worldtool:storage Translation."label.fill" set value "Fill: "
data modify storage worldtool:storage Translation."label.page" set value "Page: "
data modify storage worldtool:storage Translation."button.general.next_page.description" set value "Go to page 2"
data modify storage worldtool:storage Translation."button.general.previous_page.description" set value "Go to page 1"
data modify storage worldtool:storage Translation."button.fill.select_block.description" set value "Select a block to fill with"
data modify storage worldtool:storage Translation."button.fill.air.description" set value "Fill with air"

# Measure
data modify storage worldtool:storage Translation."info.measure.dimensions" set value '["",{"score":{"name":"#sizeX","objective":"worldtool"}}," X * ",{"score":{"name":"#sizeY","objective":"worldtool"}}," Y * ",{"score":{"name":"#sizeZ","objective":"worldtool"}}," Z"]'
data modify storage worldtool:storage Translation."info.measure.single" set value "This area contains 1 block (1 X * 1 Y * 1 Z)"
data modify storage worldtool:storage Translation."info.measure.multiple" set value '["This area contains ",{"score":{"name":"#totalArea","objective":"worldtool"}}," blocks (",{"nbt":"Translation.\\"info.measure.dimensions\\"","storage":"worldtool:storage","interpret":true},")"]'
data modify storage worldtool:storage Translation."info.measure.filter" set value '["This area contains ",{"score":{"name":"#blocksPlaced","objective":"worldtool"}}," of the selected block(s),\\nwith the matching blocks making up an area of ",{"nbt":"Translation.\\"info.measure.dimensions\\"","storage":"worldtool:storage","interpret":true}]'
data modify storage worldtool:storage Translation."info.measure.filter.none" set value "This area contains 0 of the selected block(s)"
data modify storage worldtool:storage Translation."info.measure.distance" set value '["There is a distance of ~",{"score":{"name":"#sqrtOutput","objective":"worldtool"}},".",{"score":{"name":"#outputDecimals","objective":"worldtool"}}," blocks between the positions (",{"score":{"name":"#pos1xt","objective":"worldtool"}},", ",{"score":{"name":"#pos1yt","objective":"worldtool"}},", ",{"score":{"name":"#pos1zt","objective":"worldtool"}},") and (",{"score":{"name":"#pos2xt","objective":"worldtool"}},", ",{"score":{"name":"#pos2yt","objective":"worldtool"}},", ",{"score":{"name":"#pos2zt","objective":"worldtool"}},")"]'

# Brush Tool
data modify storage worldtool:storage Translation."label.brush_size" set value "Brush Size: "
data modify storage worldtool:storage Translation."button.brush_size.decrease.description" set value "Decrease brush size"
data modify storage worldtool:storage Translation."button.brush_size.increase.description" set value "Increase brush size"

data modify storage worldtool:storage Translation."info.no_brush_selected" set value "Please select a brush."

data modify storage worldtool:storage Translation."button.brush.select_brush.name" set value "[Select New Brush...]"
data modify storage worldtool:storage Translation."button.brush.select_brush.description" set value "Select a new brush to use"
data modify storage worldtool:storage Translation."button.brush.select_block.name" set value "[Select New Block...]  "
data modify storage worldtool:storage Translation."button.brush.select_block.description" set value "Select a new block to place"
data modify storage worldtool:storage Translation."button.brush.replace_block.name" set value "[Replace New Block...]  "
data modify storage worldtool:storage Translation."button.brush.replace_block.description" set value "Select a new block to replace"
data modify storage worldtool:storage Translation."button.brush.select_structure.name" set value "[Select New Structure...]  "
data modify storage worldtool:storage Translation."button.brush.select_structure.description" set value "Select a new structure to place"

data modify storage worldtool:storage Translation."info.selected_brush.none" set value "Selected brush: None"
data modify storage worldtool:storage Translation."info.selected_brush.paint" set value "Selected brush: Paint"
data modify storage worldtool:storage Translation."info.selected_brush.place" set value "Selected brush: Place"
data modify storage worldtool:storage Translation."info.selected_brush.replace" set value "Selected brush: Replace"
data modify storage worldtool:storage Translation."info.selected_brush.sphere" set value "Selected brush: Sphere"
data modify storage worldtool:storage Translation."info.selected_brush.circle" set value "Selected brush: Circle"
data modify storage worldtool:storage Translation."info.selected_brush.structure" set value "Selected brush: Structure"

data modify storage worldtool:storage Translation."info.selected_brush" set value "Selected brush: "
data modify storage worldtool:storage Translation."brush.none" set value "None"
data modify storage worldtool:storage Translation."brush.paint" set value "Paint"
data modify storage worldtool:storage Translation."brush.place" set value "Place"
data modify storage worldtool:storage Translation."brush.replace" set value "Replace"
data modify storage worldtool:storage Translation."brush.sphere" set value "Sphere"
data modify storage worldtool:storage Translation."brush.circle" set value "Circle"
data modify storage worldtool:storage Translation."brush.structure" set value "Structure"


# Brush settings
data modify storage worldtool:storage Translation."button.brush.hollow.on" set value "[Hollow: On]"
data modify storage worldtool:storage Translation."button.brush.hollow.off" set value "[Hollow: Off]"
data modify storage worldtool:storage Translation."button.brush.hollow.description" set value "Toggle between filling the inside of the shape with the selected block or filling it with air"
data modify storage worldtool:storage Translation."button.brush.overwrite_blocks.on" set value "[Replace Existing Blocks: On]"
data modify storage worldtool:storage Translation."button.brush.overwrite_blocks.off" set value "[Replace Existing Blocks: Off]"
data modify storage worldtool:storage Translation."button.brush.overwrite_blocks.description" set value "Toggle between replacing all blocks and only replacing air/water"
data modify storage worldtool:storage Translation."button.brush.before_block.on" set value "[Placement: On Block]"
data modify storage worldtool:storage Translation."button.brush.before_block.off" set value "[Placement: In Block]"
data modify storage worldtool:storage Translation."button.brush.before_block.description" set value "Toggle between centering the brush placement inside or outside the targetted block"
data modify storage worldtool:storage Translation."label.brush.structure_rotation.nam" set value "Structure Rotation: "
data modify storage worldtool:storage Translation."label.brush.structure_rotation.description" set value "Choose the structure's Y rotation"
data modify storage worldtool:storage Translation."label.brush.structure_mirror.name" set value "Structure Mirror: "
data modify storage worldtool:storage Translation."label.brush.structure_mirror.description" set value "Choose how to mirror the structure"
data modify storage worldtool:storage Translation."button.brush.structure_offset.name" set value "[Structure Offset...]"
data modify storage worldtool:storage Translation."button.brush.structure_offset.description" set value "Change the structure's relative position"
data modify storage worldtool:storage Translation."button.brush.flat.on" set value "[Flat: On]"
data modify storage worldtool:storage Translation."button.brush.flat.off" set value "[Flat: Off]"
data modify storage worldtool:storage Translation."button.brush.flat.description" set value "Toggle between a cube shape (default) and a square shape"
data modify storage worldtool:storage Translation."label.brush.axis.name" set value "Axis: "
data modify storage worldtool:storage Translation."label.brush.axis.description" set value "Choose which axis to place the shape on"
data modify storage worldtool:storage Translation."value.brush.axis.auto" set value "Auto"
data modify storage worldtool:storage Translation."button.brush.update_block.on" set value "[Update Block: On]"
data modify storage worldtool:storage Translation."button.brush.update_block.off" set value "[Update Block: Off]"
data modify storage worldtool:storage Translation."button.brush.update_block.description" set value "Update the process block every time the brush is used (recommended)"


# Shape Generation Tool
data modify storage worldtool:storage Translation."button.change_shape.name" set value "[Change...]"
data modify storage worldtool:storage Translation."button.change_shape.description" set value "Select another shape to use"

data modify storage worldtool:storage Translation."info.selected_shape.circle" set value "Selected shape: Circle"
data modify storage worldtool:storage Translation."info.selected_shape.cone" set value "Selected shape: Cone"
data modify storage worldtool:storage Translation."info.selected_shape.cylinder" set value "Selected shape: Cylinder"
data modify storage worldtool:storage Translation."info.selected_shape.sphere" set value "Selected shape: Sphere"

# Shape settings
data modify storage worldtool:storage Translation."label.shapes.diameter.name" set value "Diameter: "
data modify storage worldtool:storage Translation."label.shapes.diameter.description" set value "The shape's diameter in blocks"
data modify storage worldtool:storage Translation."label.shapes.precision.name" set value "Precision: "
data modify storage worldtool:storage Translation."label.shapes.precision.description" set value "How precisely shapes are drawn, with lowest being most precise. High precision is only useful for bigger shapes."

function #worldtool:addon/language/en_us
