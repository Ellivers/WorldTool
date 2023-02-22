# Called by worldtool:process_end/load
# Puts the calculated data into the next smoothing process

data modify storage worldtool:storage Temp.ToNext set from storage worldtool:storage Processes[-1].Generated
function worldtool:technical/common/transfer_to_next
