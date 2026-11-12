#> tm_rpg:player/skill/test_pro/skill1

# スキル「test飛び道具ダメージ（前方に飛び道具を飛ばす）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 弾の見た目と種類は skill2、弾の毎 tick の処理は skill3 に書く
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage
# 当たったときに関数を実行したいときは、ここで storage tm_rpg:damage func を上書きする

# 消えるまでの tick（30 ＝ 1.5秒。0 だと次の tick で消える）
data modify storage tm_rpg:damage kill_time set value 30

# 弾を出す（出したばかりの弾が @s になって skill2 が動く。弾を探さなくてよい）
execute positioned ~ ~1.5 ~ summon minecraft:item_display run function tm_rpg:player/skill/test_pro/skill2

return 1
