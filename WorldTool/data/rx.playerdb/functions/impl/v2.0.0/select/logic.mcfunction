# source: rx.playerdb:impl/v2.0.0/select/logic
scoreboard players operation $verify.uid rx.pdb.io = $uid rx.temp
function rx.playerdb:impl/v2.0.0/verify/main
execute if score $verified rx.pdb.io matches 0 unless data storage rx.playerdb:main players[] run tellraw @a[tag=rx.admin] ["", ["", {"storage": "rx:info", "nbt": "playerdb.pretty_name", "interpret": true}], {"text": " "}, {"text": "Select Error: Selection failed. No players in database to select", "color": "#CE4257"}]
execute if score $verified rx.pdb.io matches 0 if data storage rx.playerdb:main players[] run data modify storage rx.playerdb:main players[].selected set value 1b
execute if score $verified rx.pdb.io matches 0 if data storage rx.playerdb:main players[] run function rx.playerdb:impl/v2.0.0/select/tree/bit0
