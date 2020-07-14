execute if score #cloneDelayTimer worldtool >= $clonePreviewDelay worldtool as @a[tag=wt_clone_preview] at @s run function worldtool:particles/clone_preview/check
execute if score #cloneDelayTimer worldtool >= $clonePreviewDelay worldtool run scoreboard players set #cloneDelayTimer worldtool 0
scoreboard players add #cloneDelayTimer worldtool 1