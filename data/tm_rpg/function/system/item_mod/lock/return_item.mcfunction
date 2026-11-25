#> tm_rpg:system/item_mod/lock/return_item

# lock/timeout が改造台から出したアイテムを、使っている人に渡す関数。lock/timeout から呼ばれる
# その人の足元へ送り、その人だけが拾えるようにする（Owner。ほかの人に拾われないように）
# @s ＝ 出したアイテム（tag kaizou_return）、使っている人 ＝ tag kaizou_this

data modify entity @s Owner set from entity @a[tag=kaizou_this,limit=1] UUID
tp @s @a[tag=kaizou_this,limit=1]
tag @s remove kaizou_return
