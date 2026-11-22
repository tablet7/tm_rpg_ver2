#> tm_rpg:system/item_drop/hit_mark/take

# 倒した敵の印（tag item_drop.hit.<ent_id>）が付いたプレイヤー全員を、アイテムを受け取る人（tag item_drop.receiver）にして、印を外す関数
# enemy/death_main から呼ばれる。tag item_drop.receiver は、呼んだ側がアイテムを渡したあとに外す
# 印を外せるのはオンラインのプレイヤーだけ（オフラインの人の印は残るが、ent_id は使い回さないので次の敵には効かない）
# @s ＝ 倒した敵

execute unless score @s ent_id matches -2147483648.. run return 0
execute store result storage tm_rpg:hit_mark id int 1 run scoreboard players get @s ent_id
function tm_rpg:system/item_drop/hit_mark/take_macro with storage tm_rpg:hit_mark
