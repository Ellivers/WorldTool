# source: rx.playerdb:admin/migrate_account
execute unless data storage rx.playerdb:temp admin.migrate.UUID run tellraw @a[tag=rx.admin] ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"text": "Migration Error: Bad input at", "color": "#CE4257"}, {"text": " "}, {"text": "rx.playerdb:temp admin.migrate", "color": "gold"}, {"text": " "}, {"text": "is empty", "color": "#CE4257"}]
execute if data storage rx.playerdb:temp admin.migrate.UUID run function rx.playerdb:admin/migrate_account/logic
