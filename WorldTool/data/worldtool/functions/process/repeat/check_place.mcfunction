# Called by worldtool:process/repeat/main
# Different requirements for placing a block

execute if entity @s[tag=wt.process.repeat.filter.normal] if blocks 27449 1 19 27449 1 19 27451 1 19 all run function worldtool:process/place_block.primary
execute if entity @s[tag=wt.process.repeat.filter.exclude] unless blocks 27449 1 19 27449 1 19 27451 1 19 all run function worldtool:process/place_block.primary

execute if entity @s[tag=!wt.process.repeat.filter.normal,tag=!wt.process.repeat.filter.exclude] unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/place_block.primary
