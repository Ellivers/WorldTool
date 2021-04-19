execute unless entity @s[tag=wt_circlegen] run scoreboard players remove #blockschecked worldtool 1
scoreboard players operation #blockscheckedtotal worldtool += #blockschecked worldtool
execute store result bossbar worldtool:progress value run scoreboard players get #blockscheckedtotal worldtool
#tellraw @a {"score": {"name": "#blockscheckedtotal","objective": "worldtool"}}
