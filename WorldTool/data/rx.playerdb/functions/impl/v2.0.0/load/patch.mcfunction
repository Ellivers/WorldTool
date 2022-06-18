# source: rx.playerdb:impl/v2.0.0/load/patch
execute if score #rx.playerdb.patch load.status matches ..0 unless score #rx.playerdb.patch load.status matches 0 run function rx.playerdb:impl/v2.0.0/load/set_version
