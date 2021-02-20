
replaceitem entity @s weapon.mainhand minecraft:air
summon item ~ ~ ~ {PickupDelay:1s,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,worldTool:1b,Type:6b,Color:"White",Enchantments:[{}],display:{Name:'{"text":"Brush tool","italic":false}',Lore:['""','{"text":"Selected color:","color":"white","italic":false}','{"text":"White","color":"light_purple","italic":false}','""']}}}}

function worldtool:ui_brush/select