# source: rx.playerdb:impl/v2.0.0/verify/main
execute store result score $size rx.temp if data storage rx.playerdb:main players[{selected: 1b}]
execute store result score $uid.check rx.temp run data get storage rx.playerdb:main players[{selected: 1b}].info.uid
execute store result score $verified rx.pdb.io if score $size rx.temp matches 1
execute if score $verified rx.pdb.io matches 1 store result score $verified rx.pdb.io if score $verify.uid rx.pdb.io = $uid.check rx.temp
scoreboard players reset $uid.check rx.temp
