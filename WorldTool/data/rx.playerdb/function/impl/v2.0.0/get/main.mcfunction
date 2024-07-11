# source: rx.playerdb:impl/v2.0.0/get/main
execute if score $in.uid rx.pdb.io < $uid.next rx.uid run function rx.playerdb:impl/v2.0.0/select/main
execute if score $in.uid rx.pdb.io < $uid.next rx.uid run function rx.playerdb:impl/v2.0.0/get/logic
execute if score $in.uid rx.pdb.io >= $uid.next rx.uid run data remove storage rx.playerdb:io player
execute if score $in.uid rx.pdb.io >= $uid.next rx.uid run tellraw @a[tag=rx.admin] ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"text": "Get Error: Input uid above max uid", "color": "#CE4257"}]
