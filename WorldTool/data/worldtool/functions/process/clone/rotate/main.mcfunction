# Called by various functions
# The process functionality for Clone without rotation

scoreboard players add #blocksChecked worldtool 1

execute if entity @s[tag=!wt.process.clone.move] run clone ~ ~ ~ ~ ~ ~ 27451 1 19
execute if entity @s[tag=wt.process.clone.move,tag=!wt.process.clone.filter.normal,tag=!wt.process.clone.filter.exclude] run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace move

execute if entity @s[tag=wt.process.clone.move,tag=wt.process.clone.filter.normal] if blocks 27449 1 19 27449 1 19 ~ ~ ~ all run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace move
execute if entity @s[tag=wt.process.clone.move,tag=wt.process.clone.filter.exclude] unless blocks 27449 1 19 27449 1 19 ~ ~ ~ all run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace move

execute at 9880ccfe-fdf6-4538-838a-ddc75a54608e unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all run function worldtool:process/clone/check_place

scoreboard players operation #tempRotX worldtool = #rotationX worldtool
scoreboard players operation #tempRotY worldtool = #rotationY worldtool
scoreboard players operation #tempRotZ worldtool = #rotationZ worldtool

execute store success score #mirrorX worldtool if entity @s[tag=wt.process.clone.mirror.x]
execute store success score #mirrorY worldtool if entity @s[tag=wt.process.clone.mirror.y]
execute store success score #mirrorZ worldtool if entity @s[tag=wt.process.clone.mirror.z]

# Move the process entity
execute if score #processPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/clone/rotate/x
execute if score #processPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/clone/rotate/-x

execute if score #processPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/clone/rotate/z
execute if score #processPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/clone/rotate/-z

execute if score #processPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/clone/rotate/y
execute if score #processPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/clone/rotate/-y
