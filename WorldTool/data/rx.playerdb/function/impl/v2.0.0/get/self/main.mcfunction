# source: rx.playerdb:impl/v2.0.0/get/self/main
execute unless score $disable.api rx.temp matches 1.. run function rx.playerdb:impl/v2.0.0/add_entry/main
execute unless score $disable.api rx.temp matches 1.. run scoreboard players operation $in.uid rx.pdb.io = @s rx.uid
execute unless score $disable.api rx.temp matches 1.. run function rx.playerdb:impl/v2.0.0/get/main
