
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

capitalized_name = name.capitalize()

contents = [
    a(
        "scoreboard players set #tempXDir worldtool 1"
        "\nscoreboard players add #processPosX worldtool 1"
        "\nexecute store success score #varMoved worldtool run tp ~1 ~ ~"
        "\nexecute positioned ~1 ~ ~ run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players set #tempXDir worldtool -1"
        "\nscoreboard players remove #processPosX worldtool 1"
        "\nexecute store success score #varMoved worldtool run tp ~-1 ~ ~"
        "\nexecute positioned ~-1 ~ ~ run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players operation #pos2z worldtool >< #pos1z worldtool"
        "\nscoreboard players operation #pos2x worldtool >< #pos1x worldtool"
        "\n"
        "\nscoreboard players add #processPosY worldtool 1"
        "\ntp ~ ~1 ~"
        "\nexecute positioned ~ ~1 ~ run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players operation #pos2z worldtool >< #pos1z worldtool"
        "\nscoreboard players operation #pos2x worldtool >< #pos1x worldtool"
        "\n"
        "\nscoreboard players remove #processPosY worldtool 1"
        "\ntp ~ ~-1 ~"
        "\nexecute positioned ~ ~-1 ~ run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players operation #pos2x worldtool >< #pos1x worldtool"
        "\n"
        "\nscoreboard players add #processPosZ worldtool 1"
        "\ntp ~ ~ ~1"
        "\nexecute positioned ~ ~ ~1 run function {path}/{name}/main"
        "\n"
    ),
    a(
        "scoreboard players operation #pos2x worldtool >< #pos1x worldtool"
        "\n"
        "\nscoreboard players remove #processPosZ worldtool 1"
        "\ntp ~ ~ ~-1"
        "\nexecute positioned ~ ~ ~-1 run function {path}/{name}/main"
        "\n"
    ),
    a(
        "# Called by various functions"
        "\n# The process functionality for {capitalized_name}}"
        "\n"
        "\nscoreboard players add #blocksChecked worldtool 1"
        "\n"
        "\nexecute if score #varMoved worldtool matches 0 unless score #tempXDir worldtool matches 0 run function worldtool:process/correct_pos"
        "\nexecute store result score #varMoved worldtool run scoreboard players set #tempXDir worldtool 0"
        "\n"
        "\n# PROCESS-SPECIFIC COMMANDS HERE"
        "\nexecute at @s unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary"
        "\n"
        "\n# Move the process entity"
        "\nexecute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function {path}/{name}/x"
        "\nexecute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function {path}/{name}/-x"
        "\n"
        "\nexecute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function {path}/{name}/z"
        "\nexecute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function {path}/{name}/-z"
        "\n"
        "\nexecute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function {path}/{name}/y"
        "\nexecute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function {path}/{name}/-y"
        "\n"
    )
]

for i in range(0,len(directions)):
    file = open('output/'+name+'/'+directions[i]+'.mcfunction', 'w')
    file.write(contents[i])
    file.close()
