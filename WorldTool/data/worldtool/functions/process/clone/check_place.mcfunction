# Called by worldtool:process/clone/normal/main and worldtool:process/clone/rotate/main

execute if entity @s[tag=wt.process.filter.normal] if blocks 27449 1 19 27449 1 19 27451 1 19 all run function worldtool:process/place_block.primary
execute if entity @s[tag=wt.process.filter.exclude] unless blocks 27449 1 19 27449 1 19 27451 1 19 all run function worldtool:process/place_block.primary

execute if entity @s[tag=!wt.process.filter.normal,tag=!wt.process.filter.exclude] run function worldtool:process/place_block.primary