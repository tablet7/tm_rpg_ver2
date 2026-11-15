#> tm_rpg:player/skill/test_laser/fire

# スキル「test太いレーザー」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/test_laser から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

# レーザーが出ている tick（40 ＝ 2秒。hit_interval 10 なので、出した瞬間・0.5・1・1.5・2秒後の5回当たる）
data modify storage tm_rpg:damage kill_time set value 40

# 目の高さの1マス前から出す（目の位置から出すと、見た目の太い箱の中にカメラが入ってしまうため）
execute anchored eyes positioned ^ ^ ^1 summon minecraft:item_display run function tm_rpg:player/skill/test_laser/skill2
