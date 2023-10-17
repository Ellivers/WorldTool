# Merges data into the next process in the queue, after the current one

# TODO: Make this recursive
data modify storage worldtool:storage Temp.Process set from storage worldtool:storage Processes[-2]
execute if data storage worldtool:storage Temp.Process{Tags:["wt.process.save_area.back_up"]} run data modify storage worldtool:storage Processes[-3].Input merge from storage worldtool:storage Temp.ToNext
execute unless data storage worldtool:storage Temp.Process{Tags:["wt.process.save_area.back_up"]} run data modify storage worldtool:storage Processes[-2].Input merge from storage worldtool:storage Temp.ToNext
