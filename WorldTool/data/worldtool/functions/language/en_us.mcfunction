# Called by worldtool:language/reload, worldtool:technical/load, and INSERT_FUNCTION
# Translations for English

data modify storage worldtool:storage Language set value "worldtool:en_us"

## General stuff ##

# Items
data modify storage worldtool:storage Translation."item.general.pos1" set value "Set Position 1"
data modify storage worldtool:storage Translation."item.general.pos2" set value "Set Position 2"
data modify storage worldtool:storage Translation."lore.general.normal.1" set value '["",{"keybind":"key.use","color":"gold"}," to set a position"]'
data modify storage worldtool:storage Translation."lore.general.normal.2" set value '["",{"keybind":"key.drop","color":"gold"}," to toggle which position to set"]'
data modify storage worldtool:storage Translation."lore.general.normal.3" set value '["",{"keybind":"key.sneak","color":"gold"}," + ",{"keybind":"key.drop","color":"gold"}," to open the menu"]'
data modify storage worldtool:storage Translation."item.general.clonepos" set value "Set Cloning Destination"
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


# Processes
data modify storage worldtool:storage Translation."process.fill" set value "Fill area"

# Info
data modify storage worldtool:storage Translation."info.uninstall" set value "WorldTool has been uninstalled"
data modify storage worldtool:storage Translation."info.affected_blocks" set value '[{"score":{"name":"#blocksPlaced","objective":"worldtool"}}," affected blocks"]'
data modify storage worldtool:storage Translation."info.pos1_set" set value "Set position 1 to "
data modify storage worldtool:storage Translation."info.pos2_set" set value "Set position 2 to "

# Errors
data modify storage worldtool:storage Translation."error.both_pos_duplicates" set value "Error: You appear to have duplicate positions set. Try setting both positions 1 and 2 again."
data modify storage worldtool:storage Translation."error.both_pos_missing" set value "Error: You appear to not have any set positions. Positions 1 and 2 are needed to access this function."
data modify storage worldtool:storage Translation."error.positions" set value "Error: You appear to have an incorrect amount of positions set. Try setting both positions 1 and 2 again."
data modify storage worldtool:storage Translation."error.pos1_duplicates" set value "Error: You appear to have a duplicated position 1. Try setting position 1 again."
data modify storage worldtool:storage Translation."error.pos1_missing" set value "Error: You appear to not have a position 1. Positions 1 and 2 are needed to access this function."
data modify storage worldtool:storage Translation."error.pos2_duplicates" set value "Error: You appear to have a duplicated position 2. Try setting position 2 again."
data modify storage worldtool:storage Translation."error.pos2_missing" set value "Error: You appear to not have a position 2. Positions 1 and 2 are needed to access this function."
data modify storage worldtool:storage Translation."error.process_running" set value "Another process is currently running"

# Common buttons
data modify storage worldtool:storage Translation."button.close.name" set value "[Close]"
data modify storage worldtool:storage Translation."button.close.description" set value "Cancel and close this menu"
data modify storage worldtool:storage Translation."button.back.name" set value "[⬅Back]"
data modify storage worldtool:storage Translation."button.back.description" set value "Go back to the previous menu"
data modify storage worldtool:storage Translation."button.ui_general.back.description" set value "Go back to page 1 of the main menu"
data modify storage worldtool:storage Translation."button.kill_process.name" set value "[Kill Process]"
data modify storage worldtool:storage Translation."button.kill_process.description" set value "Kill the currently running process"
data modify storage worldtool:storage Translation."button.select_block.name" set value "[Select a Block]"
data modify storage worldtool:storage Translation."button.select_block.description" set value "Select a block to use"
data modify storage worldtool:storage Translation."button.replace_block.replace.name" set value "[Select a Block to Replace]"
data modify storage worldtool:storage Translation."button.replace_block.replace.description" set value "Select a block to replace"
data modify storage worldtool:storage Translation."button.replace_block.dont_replace.name" set value "[Select a Block to Not Replace]"
data modify storage worldtool:storage Translation."button.replace_block.dont_replace.description" set value "Select a block to exclude"
data modify storage worldtool:storage Translation."button.replace_block.place.name" set value "[Select a Block to Replace With]"
data modify storage worldtool:storage Translation."button.replace_block.place.description" set value "Select a block to place"
data modify storage worldtool:storage Translation."button.pick_block.name" set value "[Pick Block]"
data modify storage worldtool:storage Translation."button.pick_block.description" set value "Select a block in the world to use"
data modify storage worldtool:storage Translation."button.air.name" set value "(Air)"
data modify storage worldtool:storage Translation."button.air.description" set value "Air"
data modify storage worldtool:storage Translation."button.help.spacer" set value "                                                                            "
data modify storage worldtool:storage Translation."button.help.name" set value "[?]"
data modify storage worldtool:storage Translation."button.help.description" set value "Don't know what to do?"

# Common option buttons
data modify storage worldtool:storage Translation."button.left.name" set value "< "
data modify storage worldtool:storage Translation."button.decrease.description" set value "Decrease"
data modify storage worldtool:storage Translation."button.right.name" set value " >"
data modify storage worldtool:storage Translation."button.increase.description" set value "Increase"
data modify storage worldtool:storage Translation."button.left.description" set value "Left"
data modify storage worldtool:storage Translation."button.right.description" set value "Right"
data modify storage worldtool:storage Translation."button.enabled.name" set value "Enabled"
data modify storage worldtool:storage Translation."button.enabled.description" set value "Disable"
data modify storage worldtool:storage Translation."button.disabled.name" set value "Disabled"
data modify storage worldtool:storage Translation."button.disabled.description" set value "Enable"

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

# General Tool
data modify storage worldtool:storage Translation."button.use.name" set value "[Use]  "
data modify storage worldtool:storage Translation."button.use.description" set value "Open the main menu"
data modify storage worldtool:storage Translation."button.options.name" set value "[Options]"
data modify storage worldtool:storage Translation."button.options.description" set value "Open the options menu"

data modify storage worldtool:storage Translation."label.page" set value "Page: "
data modify storage worldtool:storage Translation."button.general.next_page.description" set value "Go to page 2"
data modify storage worldtool:storage Translation."button.general.previous_page.description" set value "Go to page 1"
data modify storage worldtool:storage Translation."button.fill.select_block.description" set value "Select a block to fill with"
data modify storage worldtool:storage Translation."button.fill.air.description" set value "Fill with air"

# Measure
data modify storage worldtool:storage Translation."info.measure.single" set value "This area contains 1 block (1 X * 1 Y * 1 Z)"
data modify storage worldtool:storage Translation."info.measure.multiple" set value '["This area contains ",{"score":{"name":"#totalArea","objective":"worldtool"}}," blocks"]'

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
data modify storage worldtool:storage Translation."button.water.name" set value "(Water)"
data modify storage worldtool:storage Translation."button.water.description" set value "Water"

data modify storage worldtool:storage Translation."info.selected_brush.none" set value "Selected brush: None"
data modify storage worldtool:storage Translation."info.selected_brush.paint" set value "Selected brush: Paint"
data modify storage worldtool:storage Translation."info.selected_brush.place" set value "Selected brush: Place"
data modify storage worldtool:storage Translation."info.selected_brush.replace" set value "Selected brush: Replace"
data modify storage worldtool:storage Translation."info.selected_brush.sphere" set value "Selected brush: Sphere"
data modify storage worldtool:storage Translation."info.selected_brush.circle" set value "Selected brush: Circle"
data modify storage worldtool:storage Translation."info.selected_brush.structure" set value "Selected brush: Paint"

data modify storage worldtool:storage Translation."info.selected_brush" set value "Selected brush: "
data modify storage worldtool:storage Translation."brush.none" set value "None"
data modify storage worldtool:storage Translation."brush.paint" set value "Paint"
data modify storage worldtool:storage Translation."brush.place" set value "Place"
data modify storage worldtool:storage Translation."brush.replace" set value "Replace"
data modify storage worldtool:storage Translation."brush.sphere" set value "Sphere"
data modify storage worldtool:storage Translation."brush.circle" set value "Circle"
data modify storage worldtool:storage Translation."brush.structure" set value "Paint"


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


function #worldtool:addon/language/en_us
