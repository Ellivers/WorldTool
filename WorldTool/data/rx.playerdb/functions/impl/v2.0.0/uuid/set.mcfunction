# source: rx.playerdb:impl/v2.0.0/uuid/set
data modify storage rx.playerdb:temp UUID set from entity @s UUID
execute store result score @s rx.uuid0 run data get storage rx.playerdb:temp UUID[0]
execute store result score @s rx.uuid1 run data get storage rx.playerdb:temp UUID[1]
execute store result score @s rx.uuid2 run data get storage rx.playerdb:temp UUID[2]
execute store result score @s rx.uuid3 run data get storage rx.playerdb:temp UUID[3]
scoreboard players operation $uid rx.temp = @s rx.uuid0
function rx.playerdb:impl/v2.0.0/uuid/select
execute if score $found rx.temp matches 0 unless score @s rx.uid matches 1.. run function rx.playerdb:impl/v2.0.0/utils/new_uid
execute if score $found rx.temp matches 0 run function rx.playerdb:impl/v2.0.0/uuid/new
execute if score $found rx.temp matches 1 run function rx.playerdb:impl/v2.0.0/uuid/update
