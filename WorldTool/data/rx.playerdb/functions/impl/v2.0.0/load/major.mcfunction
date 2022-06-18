# source: rx.playerdb:impl/v2.0.0/load/major
execute if score #rx.playerdb.major load.status matches ..2 unless score #rx.playerdb.major load.status matches 2 run function rx.playerdb:impl/v2.0.0/load/set_version
execute if score #rx.playerdb.major load.status matches ..2 if score #rx.playerdb.major load.status matches 2 unless score #rx.playerdb.set load.status matches 1 run function rx.playerdb:impl/v2.0.0/load/minor
