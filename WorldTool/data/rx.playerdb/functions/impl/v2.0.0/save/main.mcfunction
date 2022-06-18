# source: rx.playerdb:impl/v2.0.0/save/main
function rx.playerdb:impl/v2.0.0/select/main
execute store result score $uid.check rx.temp run data get storage rx.playerdb:io player.info.uid
execute unless data storage rx.playerdb:io player run tellraw @a[tag=rx.admin] ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"text": "Save Error: No rx:io data to save", "color": "#CE4257"}]
execute if data storage rx.playerdb:io player unless score $uid.check rx.temp = $in.uid rx.pdb.io run tellraw @a[tag=rx.admin] ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"text": "Error: rx.playerdb:io player.info.uid invalid", "color": "#CE4257"}]
execute if data storage rx.playerdb:io player if score $uid.check rx.temp = $in.uid rx.pdb.io run function rx.playerdb:impl/v2.0.0/save/logic
data remove storage rx.playerdb:io player
