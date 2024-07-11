# source: rx.playerdb:impl/v2.0.0/load/minor
execute if score #rx.playerdb.minor load.status matches ..0 unless score #rx.playerdb.minor load.status matches 0 run function rx.playerdb:impl/v2.0.0/load/set_version
execute if score #rx.playerdb.minor load.status matches ..0 if score #rx.playerdb.minor load.status matches 0 unless score #rx.playerdb.set load.status matches 1 run function rx.playerdb:impl/v2.0.0/load/patch
