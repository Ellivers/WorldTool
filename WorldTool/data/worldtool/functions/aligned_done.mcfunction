execute if entity @s[tag=!from_cmd] at @a[tag=!random_2] if score @p wt_ID = @s wt_ID as @p run function worldtool:fill_done
execute if entity @s[tag=!from_cmd] at @a[tag=random_2] if score @p wt_ID = @s wt_ID as @p run function worldtool:ui/random/place_done
execute if entity @s[tag=from_cmd] run function worldtool:cmd/done