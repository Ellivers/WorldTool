
from genericpath import exists;
import os;
import re;
from shutil import rmtree;
from sys import exit;

if (exists('output')):
    if (input('The directory "output" already exists.\nDelete it and continue? (y/n) ').lower() == 'y'):
        rmtree('output')
    else:
        print('Cancelled.')
        exit()


os.mkdir('output')

output = open('output/result.mcfunction', 'w')
output.write('function worldtool:technical/common/temp_pos1')

input = open('input.mcfunction','r').read().splitlines()

for i in range(0, len(input)):
    fillparts = re.match('^\s*fill ~(-?\d+)? ~(-?\d+)? ~(-?\d+)? ~(-?\d+)? ~(-?\d+)? ~(-?\d+)?', input[i])
    if (fillparts is None):
        output.write(input[i])
        continue
    
    output.write('scoreboard players operation #pos1xt2 worldtool = #pos1xt worldtool')
    output.write('scoreboard players operation #pos1yt2 worldtool = #pos1yt worldtool')
    output.write('scoreboard players operation #pos1zt2 worldtool = #pos1zt worldtool')

    output.write('scoreboard players operation #pos2xt worldtool = #pos1xt worldtool')
    output.write('scoreboard players operation #pos2yt worldtool = #pos1yt worldtool')
    output.write('scoreboard players operation #pos2zt worldtool = #pos1zt worldtool')

    if (fillparts[1] is not None and int(fillparts[1]) > 0): output.write('scoreboard players add #pos1xt2 worldtool {fillparts[1]}')
    if (fillparts[1] is not None and int(fillparts[1]) < 0): output.write('scoreboard players remove #pos1xt2 worldtool {fillparts[1]}')

    if (fillparts[2] is not None and int(fillparts[2]) > 0): output.write('scoreboard players add #pos1yt2 worldtool {fillparts[2]}')
    if (fillparts[2] is not None and int(fillparts[2]) < 0): output.write('scoreboard players remove #pos1yt2 worldtool {fillparts[2]}')

    if (fillparts[3] is not None and int(fillparts[3]) > 0): output.write('scoreboard players add #pos1zt2 worldtool {fillparts[3]}')
    if (fillparts[3] is not None and int(fillparts[3]) < 0): output.write('scoreboard players remove #pos1zt2 worldtool {fillparts[3]}')

    if (fillparts[4] is not None and int(fillparts[4]) > 0): output.write('scoreboard players add #pos2xt worldtool {fillparts[4]}')
    if (fillparts[4] is not None and int(fillparts[4]) < 0): output.write('scoreboard players remove #pos2xt worldtool {fillparts[4]}')

    if (fillparts[5] is not None and int(fillparts[5]) > 0): output.write('scoreboard players add #pos2yt worldtool {fillparts[5]}')
    if (fillparts[5] is not None and int(fillparts[5]) < 0): output.write('scoreboard players remove #pos2yt worldtool {fillparts[5]}')

    if (fillparts[6] is not None and int(fillparts[6]) > 0): output.write('scoreboard players add #pos2zt worldtool {fillparts[6]}')
    if (fillparts[6] is not None and int(fillparts[6]) < 0): output.write('scoreboard players remove #pos2zt worldtool {fillparts[6]}')

    output.write('data modify storage worldtool:storage CmdProcess set value {ID:"worldtool:fill",Tags:["wt.process.fill"],StartType:"worldtool:shape"}')
    output.write('data modify storage worldtool:storage Temp.Pos set value [0d,0d,0d]')
    output.write('execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #pos1xt2 worldtool')
    output.write('execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #pos1yt2 worldtool')
    output.write('execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #pos1zt2 worldtool')
    output.write('data modify storage worldtool:storage CmdProcess.Positions.1 set from storage worldtool:storage Temp.Pos')
    output.write('data modify storage worldtool:storage Temp.Pos set value [0d,0d,0d]')
    output.write('execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #pos2xt worldtool')
    output.write('execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #pos2yt worldtool')
    output.write('execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #pos2zt worldtool')
    output.write('data modify storage worldtool:storage CmdProcess.Positions.2 set from storage worldtool:storage Temp.Pos')

output.close()
