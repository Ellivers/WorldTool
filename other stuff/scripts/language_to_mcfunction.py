from ast import literal_eval
from collections import OrderedDict
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

input1 = open('input/input.json','r',encoding='utf-8')
obj = json.load(input1)
input2 = open('input/en_us.mcfunction','r',encoding='utf-8')
basearr = input2.read().splitlines()
arr = []
for i in range(0, len(basearr)):
    mat = re.match(r'^data modify storage worldtool:storage Translation."[^ ]+" set value (.*)$', basearr[i])
    if mat is None:
        continue
    arr.append(mat[1])

template = 'data modify storage worldtool:storage Translation."%1s" set value %2s'

def get_value(obj, value):
    if isinstance(obj, str):
        return value
    if isinstance(obj, dict):
        if 'text' in obj:
            obj['text'] = value
        return obj

def doublestring(string):
    return json.dumps(json.dumps(string))

output = open('output/result.mcfunction','w',encoding='utf-8')
def writeoutput(key: str, string: str):
    # unicode_chars = re.findall(r'\\u[\da-f]{4}', string)
    # if len(unicode_chars) > 0:
    #     print(unicode_chars)
    #     for o in range(0, len(unicode_chars)):
    #         string.replace(unicode_chars[o], literal_eval(unicode_chars[o]))
    output.write(template.replace('%1s', key).replace('%2s', string) + '\n')

reindex = r'%\ds'
reobj = r'\{[^\}]+\}'

q = -1
for key, value in obj.items():
    q += 1

    jsonval = None
    try:
        jsonval = json.loads(literal_eval(arr[q]))
    except:
        pass

    if jsonval is None:
        writeoutput(key, json.dumps(value, ensure_ascii=False))
        continue

    if isinstance(jsonval, dict) or isinstance(jsonval, str):
        writeoutput(key, doublestring(get_value(jsonval, value)))
        continue

    # List start
    if isinstance(jsonval, list):
        objrefs = []
        for d in range(0, len(jsonval)):
            listobj = jsonval[d]
            if isinstance(listobj, dict) and ('nbt' in listobj or 'keybind' in listobj or 'score' in listobj):
                objrefs.append(listobj)
        
        objtexts = []
        for d in range(0, len(jsonval)):
            listobj = jsonval[d]
            if isinstance(listobj, dict) and 'text' in listobj:
                objtexts.append(listobj)
        
        valstrings = re.split(reindex + '|' + reobj, value)
        valobjs = re.findall(reindex + '|' + reobj, value)
        valarr = []
        for d in range(0, len(valstrings)):
            if valstrings[d] != '':
                valarr.append(valstrings[d])
            if len(valobjs) - 1 >= d and valobjs[d] != '':
                valarr.append(valobjs[d])

        outarr = []
        if jsonval[0] == '':
            outarr.append('')
            del jsonval[0]
        
        textobj_i = 0
        for d in range(0, len(valarr)):
            valpart = valarr[d]
            objpart = jsonval[d]

            mat = re.match(r'^%(\d)s$', valpart)
            if mat:
                objtoadd = {}
                try:
                    objtoadd = objrefs[int(mat[1])-1]
                except:
                    print('Error: Key "' + key + '" has an out-of-bounds reference')
                outarr.append(objtoadd)
                continue
            mat = re.match(r'^\{([^\{])\}$', valpart)
            if mat:
                textobj_i += 1
                objtoadd = {}
                try:
                    objtoadd = objtexts[textobj_i]
                except:
                    print('Error: Key "' + key + '" has a non-existant text object')
                objtoadd["text"] = mat[1]
                outarr.append(objtoadd)
                continue
            outarr.append(valpart)
        
        writeoutput(key, doublestring(outarr))
    # List end


input1.close()
input2.close()
output.close()
