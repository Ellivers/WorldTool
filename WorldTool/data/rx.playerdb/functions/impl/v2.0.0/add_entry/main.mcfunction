# source: rx.playerdb:impl/v2.0.0/add_entry/main
function rx.playerdb:impl/v2.0.0/tick/player
execute unless score @s rx.pdb.has_entry matches 1 run function rx.playerdb:impl/v2.0.0/add_entry/logic
