#> tm_rpg:player/skill/test_sword_volley/skill4

# スキル「test剣の一斉射撃」で、待っている剣を撃つ関数。skill3 から呼ばれる
# 管理役のいる床の面に向けて 1マス/tick で飛ばす。地面で止まって刺さり（stop_harmless で当たらなくなる）、kill_time まで残る
# 剣はもう main の弾のくり返しに入っているので、ここで tick は呼ばない（同じ tick に2回動くことがあるため）
# @s ＝ 撃つ剣（item_display）。実行位置 ＝ 管理役の場所
# storage tm_rpg:damage kill_time ＝ 撃った剣の消えるまでの tick（spawner/spawn が管理役の覚えた値を戻している）

# 管理役の床の面（管理役は床から 0.5 マス上にいる）に向ける。低い角度で飛ぶので、床を狙わないと奥にずれる
rotate @s facing ~ ~-0.5 ~

# 待つのをやめる（揺れる演出も外す）
tag @s remove sword_volley_wait
tag @s remove float_bob
tag @s remove image_marker

# 当たり判定を付けて、まっすぐ 1マス/tick で飛ばす（地面で止まる・止まったら当たらない・貫通は skill5 で付けてある）
tag @s add damage_marker
tag @s add move_entity
tag @s add straight10

# 消えるまでの tick を、撃った剣のものにする
execute store result score @s kill_time run data get storage tm_rpg:damage kill_time
