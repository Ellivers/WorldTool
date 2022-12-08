# Called by worldtool:process/clone/normal/main and worldtool:process/clone/rotate/main
# Common commands for both clone processes

scoreboard players add #blocksChecked worldtool 1

execute if entity @s[tag=!wt.process.clone.move] run clone ~ ~ ~ ~ ~ ~ 27451 1 19
execute if entity @s[tag=wt.process.clone.move,tag=!wt.process.clone.filter.normal,tag=!wt.process.clone.filter.exclude] run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace move

execute if entity @s[tag=wt.process.clone.move,tag=wt.process.clone.filter.normal] if blocks 27449 1 19 27449 1 19 ~ ~ ~ all run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace move
execute if entity @s[tag=wt.process.clone.move,tag=wt.process.clone.filter.exclude] unless blocks 27449 1 19 27449 1 19 ~ ~ ~ all run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace move

execute at 9880ccfe-fdf6-4538-838a-ddc75a54608e unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/clone/check_place
