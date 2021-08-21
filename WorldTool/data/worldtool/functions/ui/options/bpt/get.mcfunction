execute if score $blocksPerTick worldtool matches 9999.. run tag @s add blocksPerTick_maximum
execute if score $clonedBlocksPerTick worldtool matches 9999.. run tag @s add clonedBlocksPerTick_maximum
execute if score $destroyedBlocksPerTick worldtool matches 9999.. run tag @s add destroyedBlocksPerTick_maximum
execute if score $randomizedBlocksPerTick worldtool matches 9999.. run tag @s add randomizedBlocksPerTick_maximum
execute if score $checkeredBlocksPerTick worldtool matches 9999.. run tag @s add checkeredBlocksPerTick_maximum
execute if score $outlinedBlocksPerTick worldtool matches 9999.. run tag @s add outlinedBlocksPerTick_maximum
execute if score $greeneryBlocksPerTick worldtool matches 9999.. run tag @s add greeneryBlocksPerTick_maximum
execute if score $hollowBlocksPerTick worldtool matches 9999.. run tag @s add hollowBlocksPerTick_maximum
execute if score $circleBlocksPerTick worldtool matches 9999.. run tag @s add circleBlocksPerTick_maximum

execute if score $blocksPerTick worldtool matches 4000 run tag @s add blocksPerTick_default
execute if score $clonedBlocksPerTick worldtool matches 2100 run tag @s add clonedBlocksPerTick_default
execute if score $destroyedBlocksPerTick worldtool matches 3700 run tag @s add destroyedBlocksPerTick_default
execute if score $randomizedBlocksPerTick worldtool matches 3900 run tag @s add randomizedBlocksPerTick_default
execute if score $checkeredBlocksPerTick worldtool matches 3400 run tag @s add checkeredBlocksPerTick_default
execute if score $outlinedBlocksPerTick worldtool matches 3200 run tag @s add outlinedBlocksPerTick_default
execute if score $greeneryBlocksPerTick worldtool matches 1200 run tag @s add greeneryBlocksPerTick_default
execute if score $hollowBlocksPerTick worldtool matches 3300 run tag @s add hollowBlocksPerTick_default
execute if score $circleBlocksPerTick worldtool matches 6000 run tag @s add circleBlocksPerTick_default

execute if score $blocksPerTick worldtool matches 2000 run tag @s add blocksPerTick_medium
execute if score $clonedBlocksPerTick worldtool matches 2000 run tag @s add clonedBlocksPerTick_medium
execute if score $destroyedBlocksPerTick worldtool matches 2000 run tag @s add destroyedBlocksPerTick_medium
execute if score $randomizedBlocksPerTick worldtool matches 2000 run tag @s add randomizedBlocksPerTick_medium
execute if score $checkeredBlocksPerTick worldtool matches 2000 run tag @s add checkeredBlocksPerTick_medium
execute if score $outlinedBlocksPerTick worldtool matches 2000 run tag @s add outlinedBlocksPerTick_medium
execute if score $greeneryBlocksPerTick worldtool matches 1200 run tag @s add greeneryBlocksPerTick_medium
execute if score $hollowBlocksPerTick worldtool matches 2000 run tag @s add hollowBlocksPerTick_medium
execute if score $circleBlocksPerTick worldtool matches 2000 run tag @s add circleBlocksPerTick_medium

execute if score $blocksPerTick worldtool matches 600 run tag @s add blocksPerTick_low
execute if score $clonedBlocksPerTick worldtool matches 600 run tag @s add clonedBlocksPerTick_low
execute if score $destroyedBlocksPerTick worldtool matches 600 run tag @s add destroyedBlocksPerTick_low
execute if score $randomizedBlocksPerTick worldtool matches 600 run tag @s add randomizedBlocksPerTick_low
execute if score $checkeredBlocksPerTick worldtool matches 600 run tag @s add checkeredBlocksPerTick_low
execute if score $outlinedBlocksPerTick worldtool matches 600 run tag @s add outlinedBlocksPerTick_low
execute if score $greeneryBlocksPerTick worldtool matches 600 run tag @s add greeneryBlocksPerTick_low
execute if score $hollowBlocksPerTick worldtool matches 600 run tag @s add hollowBlocksPerTick_low
execute if score $circleBlocksPerTick worldtool matches 600 run tag @s add circleBlocksPerTick_low

execute unless entity @s[tag=blocksPerTick_maximum,tag=clonedBlocksPerTick_maximum,tag=destroyedBlocksPerTick_maximum,tag=randomizedBlocksPerTick_maximum,tag=checkeredBlocksPerTick_maximum,tag=outlinedBlocksPerTick_maximum,tag=greeneryBlocksPerTick_maximum,tag=hollowBlocksPerTick_maximum,tag=circleBlocksPerTick_maximum] unless entity @s[tag=blocksPerTick_default,tag=clonedBlocksPerTick_default,tag=destroyedBlocksPerTick_default,tag=randomizedBlocksPerTick_default,tag=checkeredBlocksPerTick_default,tag=outlinedBlocksPerTick_default,tag=greeneryBlocksPerTick_default,tag=hollowBlocksPerTick_default,tag=circleBlocksPerTick_default] unless entity @s[tag=blocksPerTick_medium,tag=clonedBlocksPerTick_medium,tag=destroyedBlocksPerTick_medium,tag=randomizedBlocksPerTick_medium,tag=checkeredBlocksPerTick_medium,tag=outlinedBlocksPerTick_medium,tag=greeneryBlocksPerTick_medium,tag=hollowBlocksPerTick_medium,tag=circleBlocksPerTick_medium] unless entity @s[tag=blocksPerTick_low,tag=clonedBlocksPerTick_low,tag=destroyedBlocksPerTick_low,tag=randomizedBlocksPerTick_low,tag=checkeredBlocksPerTick_low,tag=outlinedBlocksPerTick_low,tag=greeneryBlocksPerTick_low,tag=hollowBlocksPerTick_low,tag=circleBlocksPerTick_low] run tag @s add wt_customBPT
execute if entity @s[tag=blocksPerTick_maximum,tag=clonedBlocksPerTick_maximum,tag=destroyedBlocksPerTick_maximum,tag=randomizedBlocksPerTick_maximum,tag=checkeredBlocksPerTick_maximum,tag=outlinedBlocksPerTick_maximum,tag=greeneryBlocksPerTick_maximum,tag=hollowBlocksPerTick_maximum,tag=circleBlocksPerTick_maximum] run tag @s add wt_maximumBPT
execute if entity @s[tag=blocksPerTick_default,tag=clonedBlocksPerTick_default,tag=destroyedBlocksPerTick_default,tag=randomizedBlocksPerTick_default,tag=checkeredBlocksPerTick_default,tag=outlinedBlocksPerTick_default,tag=greeneryBlocksPerTick_default,tag=hollowBlocksPerTick_default,tag=circleBlocksPerTick_default] run tag @s add wt_highBPT
execute if entity @s[tag=blocksPerTick_medium,tag=clonedBlocksPerTick_medium,tag=destroyedBlocksPerTick_medium,tag=randomizedBlocksPerTick_medium,tag=checkeredBlocksPerTick_medium,tag=outlinedBlocksPerTick_medium,tag=greeneryBlocksPerTick_medium,tag=hollowBlocksPerTick_medium,tag=circleBlocksPerTick_medium] run tag @s add wt_mediumBPT
execute if entity @s[tag=blocksPerTick_low,tag=clonedBlocksPerTick_low,tag=destroyedBlocksPerTick_low,tag=randomizedBlocksPerTick_low,tag=checkeredBlocksPerTick_low,tag=outlinedBlocksPerTick_low,tag=greeneryBlocksPerTick_low,tag=hollowBlocksPerTick_low,tag=circleBlocksPerTick_low] run tag @s add wt_lowBPT

tag @s remove blocksPerTick_maximum
tag @s remove clonedBlocksPerTick_maximum
tag @s remove destroyedBlocksPerTick_maximum
tag @s remove randomizedBlocksPerTick_maximum
tag @s remove checkeredBlocksPerTick_maximum
tag @s remove outlinedBlocksPerTick_maximum
tag @s remove greeneryBlocksPerTick_maximum
tag @s remove hollowBlocksPerTick_maximum
tag @s remove circleBlocksPerTick_maximum

tag @s remove blocksPerTick_default
tag @s remove clonedBlocksPerTick_default
tag @s remove destroyedBlocksPerTick_default
tag @s remove randomizedBlocksPerTick_default
tag @s remove checkeredBlocksPerTick_default
tag @s remove outlinedBlocksPerTick_default
tag @s remove greeneryBlocksPerTick_default
tag @s remove hollowBlocksPerTick_default
tag @s remove circleBlocksPerTick_default

tag @s remove blocksPerTick_medium
tag @s remove clonedBlocksPerTick_medium
tag @s remove destroyedBlocksPerTick_medium
tag @s remove randomizedBlocksPerTick_medium
tag @s remove checkeredBlocksPerTick_medium
tag @s remove outlinedBlocksPerTick_medium
tag @s remove greeneryBlocksPerTick_medium
tag @s remove hollowBlocksPerTick_medium
tag @s remove circleBlocksPerTick_medium

tag @s remove blocksPerTick_low
tag @s remove clonedBlocksPerTick_low
tag @s remove destroyedBlocksPerTick_low
tag @s remove randomizedBlocksPerTick_low
tag @s remove checkeredBlocksPerTick_low
tag @s remove outlinedBlocksPerTick_low
tag @s remove greeneryBlocksPerTick_low
tag @s remove hollowBlocksPerTick_low
tag @s remove circleBlocksPerTick_low
