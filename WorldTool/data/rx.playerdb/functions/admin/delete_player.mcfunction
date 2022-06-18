# source: rx.playerdb:admin/delete_player
execute unless score @s rx.uid < $uid.next rx.uid run tellraw @a[tag=rx.admin] ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"text": "Deletion Error: Input uid outside max uid", "color": "#CE4257"}]
execute if score @s rx.uid < $uid.next rx.uid run function rx.playerdb:admin/delete_player/logic
