#> tm_rpg:player/skill/test_obj_repeat/skill1

# スキル「test設置物連続ダメージ（前方にマグマブロックを置き、周りの敵に0.5秒ごとにダメージを与える）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 設置物は、動かない弾として飛び道具の共通の仕組み（main_projectile）で動かす。設定は skill2
# 1回だけダメージを与える版は test_obj
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage

# 消えるまでの tick（20 ＝ 1秒）。skill2 の hit_interval（10）の倍数にして、置いた瞬間から当たるようにする（0・0.5・1秒の3回）
data modify storage tm_rpg:damage kill_time set value 20

# 前方3マスのマスに置く（rotated ~ 0 で上下の向きを無視し、align xyz でマスの中心に合わせる）。高さは skill2 の common/snap_ground で地面に合わせる
execute rotated ~ 0 positioned ^ ^ ^3 align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:item_display run function tm_rpg:player/skill/test_obj_repeat/skill2

# 音
playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1 1

return 1
