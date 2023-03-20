from ast import literal_eval
from genericpath import exists
import json;
import os;
import re;
from shutil import rmtree;
from sys import exit

if (exists('output')):
    if (input('The directory "output" already exists.\nDelete it and continue? (y/n) ').lower() == 'y'):
        rmtree('output')
    else:
        print('Cancelled.')
        exit()


os.mkdir('output')

input = open('input/en_us.mcfunction','r',encoding='utf-8')
lines = input.read().splitlines()

def get_obj_value(obj: dict, index=1):
    if 'text' in obj:
        return obj['text']
    elif ('nbt' in obj or 'keybind' in obj or 'score' in obj):
        return '%inds'.replace('ind', str(index)) # Outputs "%1s", for example

finished_obj = {}

for i in range(0, len(lines)):
    inp = lines[i]
    key = re.match('^data modify storage worldtool:storage Translation."([^ ]+)" ', inp)
    if key is None:
        continue
    key = key[1]
    value = re.match('^data modify storage worldtool:storage Translation."[^ ]+" set value (.*)$', inp)[1]
    value = literal_eval(value)

    finished = ''

    converted_value = {}

    try:
        converted_value = json.loads(value)
    except:
        if key in finished_obj:
            print(key)
        finished_obj[key] = value
        continue

    if isinstance(converted_value, dict):
        finished = get_obj_value(converted_value)
    elif (isinstance(converted_value, str)):
        finished = converted_value
    elif isinstance(converted_value, list):
        d = 0
        k = 0
        for i2 in range(0, len(converted_value)):
            obj = converted_value[i2]
            if isinstance(obj, str):
                finished += obj
                continue

            if not 'text' in obj:
                d += 1
            else:
                k += 1
            finishedval = get_obj_value(obj, d)
            if isinstance(obj, dict) and 'text' in obj:
                finishedval = '%' + str(k) + '{' + finishedval + '}'
            finished += finishedval

    if key in finished_obj:
            print(key)
    finished_obj[key] = finished

input.close()

output = open('output/en_us.json', 'w', encoding='utf-8')
output.write(json.dumps(finished_obj, indent=2, ensure_ascii=False))
output.close()
