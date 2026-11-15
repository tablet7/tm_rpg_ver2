#> tm_rpg:enemy/skill/start

# 敵がプレイヤー用のスキルを使う前の準備。enemy/skill/<スキル> から、player/skill/skill_damage と本体（fire）の前に呼ばれる
# #skill_owner temp ＝ 敵の ent_id（撃った本人には当たらない）、#skill_side temp ＝ 1（弾に tag enemy_shot が付き、プレイヤーにだけ当たる）
# 使い終わったら enemy/skill/end で #skill_side temp を 0 に戻すこと（戻さないと、次にほかの処理が出す弾まで敵の弾になる）
# @s ＝ スキルを使う敵

scoreboard players operation #skill_owner temp = @s ent_id
scoreboard players set #skill_side temp 1
