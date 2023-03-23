from genericpath import exists
import json;
import os;
from shutil import rmtree;
from sys import exit

if (exists('output')):
    if (input('The directory "output" already exists.\nDelete it and continue? (y/n) ').lower() == 'y'):
        rmtree('output')
    else:
        print('Cancelled.')
        exit()


os.mkdir('output')

input = open('input/input.json','r',encoding='utf-8')
obj = json.load(input)
output = open('output/output.txt','w',encoding='utf-8')

for key, value in obj.items():
    output.write(value + '\n')

input.close()
output.close()
