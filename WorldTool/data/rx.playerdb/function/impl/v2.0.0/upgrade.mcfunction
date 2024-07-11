# source: rx.playerdb:impl/v2.0.0/upgrade
execute store result score $patch rx.temp run data get storage rx:info playerdb.version.patch
execute store result score $minor rx.temp run data get storage rx:info playerdb.version.minor
execute store result score $major rx.temp run data get storage rx:info playerdb.version.major
execute if score $major rx.temp matches 1 run function rx.playerdb:impl/v2.0.0/upgrade/v1tov2
