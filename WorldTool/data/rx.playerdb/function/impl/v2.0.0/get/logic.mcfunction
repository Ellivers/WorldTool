# source: rx.playerdb:impl/v2.0.0/get/logic
execute if score $size rx.temp matches 1 run data modify storage rx.playerdb:io player set from storage rx.playerdb:main players[{selected: 1b}]
execute if score $size rx.temp matches 1 run data remove storage rx.playerdb:io player.bits
execute if score $size rx.temp matches ..0 run data modify storage rx.playerdb:io player set value {}
execute store result score $uid rx.temp run data get storage rx.playerdb:io player.info.uid
execute unless score $uid rx.temp = $in.uid rx.pdb.io run data modify storage rx.playerdb:io player set value {}
