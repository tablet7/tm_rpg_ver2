#> tm_rpg:player/skill/test_laser_sweep/fire

# スキル「test振り上げレーザー」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/test_laser_sweep から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

# レーザーが出ている tick（40 ＝ 2秒）
data modify storage tm_rpg:damage kill_time set value 40

# 目の高さの1マス前から、左右は使う向きのまま、上下は下向き 40 度で出す（skill2 の sweep_pitch で上へ振り上げる）
# ほかの向きの変わり方: 上から下 ＝ rotated ~ -40 と sweep_pitch 20、右から左 ＝ rotated ~40 ~ と sweep_yaw -20、左から右 ＝ rotated ~-40 ~ と sweep_yaw 20
execute anchored eyes positioned ^ ^ ^1 rotated ~ 40 summon minecraft:item_display run function tm_rpg:player/skill/test_laser_sweep/skill2
