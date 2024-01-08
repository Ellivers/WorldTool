# Called by various functions
# Removes the tags that are to be returned

tag @s remove wt.menu.two_block_query.1
tag @s remove wt.two_block_query.normal
tag @s remove wt.two_block_query.exclude

tag @s remove wt.replace.normal
tag @s remove wt.replace.exclude
tag @s remove wt.replace.editable

function #worldtool:hooks/ui/remove_return_tags
