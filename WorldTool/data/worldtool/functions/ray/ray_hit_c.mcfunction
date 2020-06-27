execute as @e[type=minecraft:area_effect_cloud,tag=clonepos,limit=1] run function worldtool:ray/pos

clear @s minecraft:carrot_on_a_stick{worldTool:1b,Type:3b} 1
give @s minecraft:carrot_on_a_stick{worldTool:1b,Type:1b,Unbreakable:1b,Enchantments:[{}],display:{Name:'{"text":"Set position 1","italic":false}'}}
tag @s remove setclonepos

tellraw @s [{"text":"Set clone destination to "},{"score":{"name":"#posXt","objective":"worldtool"}},{"text":" "},{"score":{"name":"#posYt","objective":"worldtool"}},{"text":" "},{"score":{"name":"#posZt","objective":"worldtool"}}]

summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["wt_waiting_marker"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=wt_waiting_marker,sort=nearest,limit=1] wt_ID = @s wt_ID

function worldtool:ui/clone/start.check