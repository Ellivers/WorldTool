# source: rx.playerdb:impl/v2.0.0/load/enumerate
scoreboard players add #rx.playerdb.major load.status 0
scoreboard players add #rx.playerdb.minor load.status 0
scoreboard players add #rx.playerdb.patch load.status 0
function rx.playerdb:impl/v2.0.0/load/major
scoreboard players reset #rx.playerdb.set load.status
