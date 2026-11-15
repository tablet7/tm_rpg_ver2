#> tm_rpg:player/skill/test_laser/skill1

# スキル「test太いレーザー（前方に太いレーザーを撃つ）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 目の高さの1マス前から、撃った瞬間の向きで固定したレーザー（item_display）を出す。壁で止まり、10 tick ごとに当たる（main_projectile/beam）
#   skill2 … レーザーの設定（長さ・太さ・当たる間隔・見た目）
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage

# レーザーが出ている tick（40 ＝ 2秒。hit_interval 10 なので、出した瞬間・0.5・1・1.5・2秒後の5回当たる）
data modify storage tm_rpg:damage kill_time set value 40

# 目の高さの1マス前から出す（目の位置から出すと、見た目の太い箱の中にカメラが入ってしまうため）
execute anchored eyes positioned ^ ^ ^1 summon minecraft:item_display run function tm_rpg:player/skill/test_laser/skill2

return 1
