# source: rx.playerdb:impl/v2.0.0/upgrade/player
execute if score @s rx.uuid0 = @s rx.uuid0 unless entity @s[advancements={rx.playerdb:upgrade/v1tov2=true}] run function rx.playerdb:impl/v2.0.0/upgrade/v1tov2/player
