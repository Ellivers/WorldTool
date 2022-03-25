execute if entity @s[tag=wt.process.filter.normal] if blocks 2 1 13 2 1 13 0 1 13 all run function worldtool:process/place_block.primary
execute if entity @s[tag=wt.process.filter.exclude] unless blocks 2 1 13 2 1 13 0 1 13 all run function worldtool:process/place_block.primary

execute if entity @s[tag=!wt.process.filter.normal,tag=!wt.process.filter.exclude] run function worldtool:process/place_block.primary
