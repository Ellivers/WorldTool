# source: rx.playerdb:impl/v2.0.0/version_check/select
execute if score #rx.playerdb.major load.status matches 2 if score #rx.playerdb.minor load.status matches 0 if score #rx.playerdb.patch load.status matches 0 run function rx.playerdb:impl/v2.0.0/select/main
