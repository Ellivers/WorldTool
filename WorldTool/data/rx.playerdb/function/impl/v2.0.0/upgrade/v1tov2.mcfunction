# source: rx.playerdb:impl/v2.0.0/upgrade/v1tov2
data modify storage rx.playerdb:main players set from storage rx:global playerdb.players
data modify storage rx.playerdb:main uuid set from storage rx:global playerdb.uuid
tellraw @a ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"text": "Upgrade Success: PlayerDB v1 upgraded to v2", "color": "#1DF368"}]
