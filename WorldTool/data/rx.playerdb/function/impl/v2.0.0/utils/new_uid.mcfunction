# source: rx.playerdb:impl/v2.0.0/utils/new_uid
scoreboard players operation @s rx.uid = $uid.next rx.uid
scoreboard players add $uid.next rx.uid 1
