
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
        "scoreboard players add #writerPosX worldtool 1"
        "\ntp ~1 ~ ~"
        "\nexecute positioned ~1 ~ ~ run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players remove #writerPosX worldtool 1"
        "\ntp ~-1 ~ ~"
        "\nexecute positioned ~-1 ~ ~ run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players operation #pos2z worldtool = #pos1z worldtool"
        "\nscoreboard players operation #pos1z worldtool = #writerPosZ worldtool"
        "\nscoreboard players operation #pos2x worldtool = #pos1x worldtool"
        "\nscoreboard players operation #pos1x worldtool = #writerPosX worldtool"
        "\n"
        "\nscoreboard players add #writerPosY worldtool 1"
        "\ntp ~ ~1 ~"
        "\nexecute positioned ~ ~1 ~ run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players operation #pos2z worldtool = #pos1z worldtool"
        "\nscoreboard players operation #pos1z worldtool = #writerPosZ worldtool"
        "\nscoreboard players operation #pos2x worldtool = #pos1x worldtool"
        "\nscoreboard players operation #pos1x worldtool = #writerPosX worldtool"
        "\n"
        "\nscoreboard players remove #writerPosY worldtool 1"
        "\ntp ~ ~-1 ~"
        "\nexecute positioned ~ ~-1 ~ run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players operation #pos2x worldtool = #pos1x worldtool"
        "\nscoreboard players operation #pos1x worldtool = #writerPosX worldtool"
        "\n"
        "\nscoreboard players add #writerPosZ worldtool 1"
        "\ntp ~ ~ ~1"
        "\nexecute positioned ~ ~ ~1 run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players operation #pos2x worldtool = #pos1x worldtool"
        "\nscoreboard players operation #pos1x worldtool = #writerPosX worldtool"
        "\n"
        "\nscoreboard players remove #writerPosZ worldtool 1"
        "\ntp ~ ~ ~-1"
        "\nexecute positioned ~ ~ ~-1 run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players add #blocksChecked worldtool 1"
        "\n"
        "\n# PROCESS-SPECIFIC COMMANDS HERE"
        "\n"
        "\n# Move the writer"
        "\nexecute if score #writerPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function {path}/{name}/x"
        "\nexecute if score #writerPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function {path}/{name}/-x"
        "\n"
        "\nexecute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function {path}/{name}/z"
        "\nexecute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function {path}/{name}/-z"
        "\n"
        "\nexecute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function {path}/{name}/y"
        "\nexecute if score #writerPosX worldtool = #pos2x worldtool if score #writerPosZ worldtool = #pos2z worldtool if score #writerPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= $blocksPerTick worldtool run function {path}/{name}/-y"
        "\n"
    )
]

for i in range(0,len(directions)):
    file = open('output/'+name+'/'+directions[i]+'.mcfunction', 'w')
    file.write(contents[i])
    file.close()
