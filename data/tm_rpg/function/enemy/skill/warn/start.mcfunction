#> tm_rpg:enemy/skill/warn/start

# 予兆（警告エリア）の共通の入口。敵の技の入口（enemy/skill/warn_<スキル>）から呼ぶ
# 地面に赤い板（item_display）か、赤いパーティクルの輪を出し、#warn_time tick 後に、同じ場所・同じ向きから敵にスキルを使わせる（enemy/skill/warn/fire）
# 呼んだあと、出したタイマー（marker。tag warn_new）に「使うスキル」の tag warn_do_<スキル> を付けて、warn_new を外すこと
#   例: tag @e[type=minecraft:marker,tag=warn_new,limit=1] add warn_do_test_laser
#       tag @e[type=minecraft:marker,tag=warn_new,limit=1] remove warn_new
# 入力（すべて temp。使わない値も前の技の値が残っているので、入口ごとに全部入れる）
#   #warn_time   … 予兆を出しておく tick（このあと技が出る）
#   #warn_shape  … 0 ＝ 四角い板（enemy/skill/warn/init_plate）、1 ＝ パーティクルの輪（enemy/skill/warn/ring）
#   板（#warn_shape 0）
#     #warn_width  … 板の幅（0.1 マス単位。30 ＝ 3 マス）
#     #warn_length … 板の長さ（0.1 マス単位。200 ＝ 20 マス）
#     #warn_center … 0 ＝ 足元から前へ長さぶん（レーザーなど）、1 ＝ 足元を中心に（周りの範囲攻撃など）
#     #warn_offset … 板を前へずらす長さ（0.1 マス単位。0 ならずらさない。剣の雨のように少し先から始まる技に使う）
#   輪（#warn_shape 1）
#     #warn_radius … 輪の半径（0.1 マス単位。1〜255。50 ＝ 5 マス）。中心は足元
# @s ＝ スキルを使う敵（実行位置 ＝ 技を出す場所（足元）、向き ＝ 技を出す向き）

# タイマー（marker）。技を出す場所と向き（上下も）と、技を使う敵（ent_id）を覚える
scoreboard players operation #warn_owner temp = @s ent_id
execute summon minecraft:marker run function tm_rpg:enemy/skill/warn/init_marker

# 見た目: 赤い板（地面の少し上。左右の向きだけ合わせる）
execute if score #warn_shape temp matches 0 rotated ~ 0 positioned ~ ~0.02 ~ summon minecraft:item_display run function tm_rpg:enemy/skill/warn/init_plate
# 見た目: 赤いパーティクルの輪（地面の少し上）
execute if score #warn_shape temp matches 1 positioned ~ ~0.1 ~ run function tm_rpg:enemy/skill/warn/ring
