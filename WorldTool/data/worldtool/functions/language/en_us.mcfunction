# Called by worldtool:language/reload and INSERT_FUNCTION
# Translations for English

data modify storage worldtool:storage Language set value "worldtool:en_us"

## General stuff ##

# Items
data modify storage worldtool:storage Translation."item.general.pos1" set value "Set Position 1"
data modify storage worldtool:storage Translation."item.general.pos2" set value "Set Position 2"
data modify storage worldtool:storage Translation."item.general.clonepos" set value "Set Cloning Destination"
data modify storage worldtool:storage Translation."item.general.pick_block" set value "Pick a Block"
data modify storage worldtool:storage Translation."item.brush" set value "Brush Tool"
data modify storage worldtool:storage Translation."item.shapes" set value "Shape Generation Tool"

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
data modify storage worldtool:storage Translation."button.air.name" set value "(Air)"
data modify storage worldtool:storage Translation."button.air.description" set value "Air"

# Common option buttons
data modify storage worldtool:storage Translation."button.left.name" set value "< "
data modify storage worldtool:storage Translation."button.decrease.description" set value "Decrease"
data modify storage worldtool:storage Translation."button.right.name" set value " >"
data modify storage worldtool:storage Translation."button.increase.description" set value "Increase"
data modify storage worldtool:storage Translation."button.enabled.name" set value "Enabled"
data modify storage worldtool:storage Translation."button.enabled.description" set value "Disable"
data modify storage worldtool:storage Translation."button.disabled.name" set value "Disabled"
data modify storage worldtool:storage Translation."button.disabled.description" set value "Enable"

## Menus and processes ##

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

# Queue
data modify storage worldtool:storage Translation."error.queue.no_processes" set value "Error fetching process names: No queued processes could be found."
data modify storage worldtool:storage Translation."error.queue.invalid_process_count" set value "Error fetching process names: Could not find all queued processes."
data modify storage worldtool:storage Translation."info.queue.in_queue" set value "Another process is currently running. The process you have selected will run after the following processes have finished:"
data modify storage worldtool:storage Translation."info.queue.position" set value "Your queue position: "

# Measure
data modify storage worldtool:storage Translation."info.measure.single" set value "This area contains 1 block (1 X * 1 Y * 1 Z)"
data modify storage worldtool:storage Translation."info.measure.multiple" set value '["This area contains ",{"score":{"name":"#totalArea","objective":"worldtool"}}," blocks"]'

function #worldtool:addon/language/en_us
