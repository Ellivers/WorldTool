# source: rx.playerdb:admin/reset_all
scoreboard players reset * rx.uid
scoreboard players reset * rx.uuid0
scoreboard players reset * rx.uuid1
scoreboard players reset * rx.uuid2
scoreboard players reset * rx.uuid3
scoreboard players reset * rx.temp
scoreboard players reset * rx.pdb.io
scoreboard players reset * rx.pdb.has_entry
scoreboard players set $uid.next rx.uid 1
data modify storage rx.playerdb:main players set value []
data modify storage rx.playerdb:main uuid set value []
data remove storage rx.playerdb:io player
data remove storage rx.playerdb:io player_name
scoreboard players set @a rx.pdb.counter 0
tellraw @a[tag=rx.admin] ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"text": "Reset Success: PlayerDB successfully reset", "color": "#1DF368"}]
