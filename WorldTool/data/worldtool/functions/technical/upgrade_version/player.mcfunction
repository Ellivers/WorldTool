# Upgrades player-specific data

execute if entity @s[tag=wt.helper_particles] run tag @s add wt.helper_particles.in_menu
tag @s remove wt.helper_particles

data modify storage worldtool:storage Temp.PlayerUpgrade set from entity @s Inventory
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:0b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s hotbar.0 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:1b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s hotbar.1 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:2b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s hotbar.2 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:3b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s hotbar.3 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:4b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s hotbar.4 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:5b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s hotbar.5 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:6b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s hotbar.6 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:7b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s hotbar.7 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:8b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s hotbar.8 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:9b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.0 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:10b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.1 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:11b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.2 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:12b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.3 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:13b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.4 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:14b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.5 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:15b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.6 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:16b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.7 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:17b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.8 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:18b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.9 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:19b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.10 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:20b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.11 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:21b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.12 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:22b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.13 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:23b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.14 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:24b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.15 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:25b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.16 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:26b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.17 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:27b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.18 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:28b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.19 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:29b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.20 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:30b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.21 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:31b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.22 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:32b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.23 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:33b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.24 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:34b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.25 worldtool:common_settings/before_block/off
execute if data storage worldtool:storage Temp.PlayerUpgrade[{Slot:35b,tag:{WorldTool:{Tool:"general"}}}] run item modify entity @s inventory.26 worldtool:common_settings/before_block/off

scoreboard players operation @s wt.version = $latestVersion worldtool
