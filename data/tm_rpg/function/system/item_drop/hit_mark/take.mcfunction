#> tm_rpg:system/item_drop/hit_mark/take

# 倒した敵の ent_id が印の枠（スコア hit_mark_1〜16）に入っているプレイヤー全員を、アイテムを受け取る人（tag item_drop.receiver）にして、その枠を空ける関数
# enemy/death_main から呼ばれる。tag item_drop.receiver は、呼んだ側がアイテムを渡したあとに外す
# オフラインの人の枠は空けられないが、ent_id は使い回さないので次の敵には効かない。/reload で全員分を空にする（tm_rpg:reload）
# @s ＝ 倒した敵

execute unless score @s ent_id matches -2147483648.. run return 0
scoreboard players operation #hit_mark_id temp = @s ent_id
execute as @a run function tm_rpg:system/item_drop/hit_mark/take_player
