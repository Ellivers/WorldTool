# stop stop

# special harcoded nonsense so that a certain bug caused by precision loss doesn't happen
execute if score #maxRotation worldtool matches 0 if score #shapePrecision worldtool matches 1000 at @s run function worldtool:processes/generate_shape/circle/extra_rotation

kill @s
# dumb "temporary" solution to a major generation issue
tp ~ -2000 ~
scoreboard players set $functionRunning worldtool 0
bossbar set worldtool:progress visible false
