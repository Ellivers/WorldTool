
from genericpath import exists;
import os;
from shutil import rmtree;
from sys import exit;

name = input('Process name? ')
path = input('Process path? (nothing="worldtool:process") ')
if path == '': path = 'worldtool:process'

if (exists('output')):
    if (input('The directory "output" already exists.\nDelete it and continue? (y/n) ').lower() == 'y'):
        rmtree('output')
    else:
        print('Cancelled.')
        exit()


os.mkdir('output')
os.mkdir('output/'+name)

directions = ['x','-x','y','-y','z','-z','main']

def a(string):
    return str(string).replace('{path}',path).replace('{name}',name)

contents = [
    a(
        "scoreboard players add #processPosX worldtool 1"
        "\ntp ~1 ~ ~"
        "\nexecute positioned ~1 ~ ~ run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players remove #processPosX worldtool 1"
        "\ntp ~-1 ~ ~"
        "\nexecute positioned ~-1 ~ ~ run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players operation #pos2z worldtool = #pos1z worldtool"
        "\nscoreboard players operation #pos1z worldtool = #processPosZ worldtool"
        "\nscoreboard players operation #pos2x worldtool = #pos1x worldtool"
        "\nscoreboard players operation #pos1x worldtool = #processPosX worldtool"
        "\n"
        "\nscoreboard players add #processPosY worldtool 1"
        "\ntp ~ ~1 ~"
        "\nexecute positioned ~ ~1 ~ run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players operation #pos2z worldtool = #pos1z worldtool"
        "\nscoreboard players operation #pos1z worldtool = #processPosZ worldtool"
        "\nscoreboard players operation #pos2x worldtool = #pos1x worldtool"
        "\nscoreboard players operation #pos1x worldtool = #processPosX worldtool"
        "\n"
        "\nscoreboard players remove #processPosY worldtool 1"
        "\ntp ~ ~-1 ~"
        "\nexecute positioned ~ ~-1 ~ run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players operation #pos2x worldtool = #pos1x worldtool"
        "\nscoreboard players operation #pos1x worldtool = #processPosX worldtool"
        "\n"
        "\nscoreboard players add #processPosZ worldtool 1"
        "\ntp ~ ~ ~1"
        "\nexecute positioned ~ ~ ~1 run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players operation #pos2x worldtool = #pos1x worldtool"
        "\nscoreboard players operation #pos1x worldtool = #processPosX worldtool"
        "\n"
        "\nscoreboard players remove #processPosZ worldtool 1"
        "\ntp ~ ~ ~-1"
        "\nexecute positioned ~ ~ ~-1 run function {path}/{name}/main"
        "\n"
    ),
    a(
        "# Called by various functions"
        "\n# The process functionality for PROCESS NAME"
        "\n"
        "\nscoreboard players add #blocksChecked worldtool 1"
        "\n"
        "\n# PROCESS-SPECIFIC COMMANDS HERE"
        "\n"
        "\n# Move the process entity"
        "\nexecute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function {path}/{name}/x"
        "\nexecute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function {path}/{name}/-x"
        "\n"
        "\nexecute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function {path}/{name}/z"
        "\nexecute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function {path}/{name}/-z"
        "\n"
        "\nexecute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function {path}/{name}/y"
        "\nexecute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function {path}/{name}/-y"
        "\n"
    )
]

for i in range(0,len(directions)):
    file = open('output/'+name+'/'+directions[i]+'.mcfunction', 'w')
    file.write(contents[i])
    file.close()
