#> tm_rpg:player/skill/test_pro/skill1

# スキル「test飛び道具ダメージ（前方・近くの敵に向けて・右上から追尾・左に爆発、の4つの飛び道具を飛ばす）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# 当たる敵がいなくても成功（1）を返す（空振りでも MP・クールタイムを使い、演出も出す）
# 弾の見た目と種類は skill2（追尾する弾は skill4、爆発する弾は skill5 から skill2）、弾の毎 tick の処理は skill3 に書く
# @s ＝ スキルを使ったプレイヤー（at @s）

# ダメージ計算（storage tm_rpg:damage に入る）
function tm_rpg:player/skill/skill_damage
# 当たったときに関数を実行したいときは、ここで storage tm_rpg:damage func を上書きする

# 消えるまでの tick（30 ＝ 1.5秒。0 だと次の tick で消える）
data modify storage tm_rpg:damage kill_time set value 30

# 1つ目の弾: 向いている方向に出す（出したばかりの弾が @s になって skill2 が動く。弾を探さなくてよい）
execute positioned ~ ~1.5 ~ summon minecraft:item_display run function tm_rpg:player/skill/test_pro/skill2

# 2つ目の弾: 16マス以内でいちばん近い敵（弾が当たる敵と同じ tag mob・hitdamage）の目の高さに向けて出す
# facing で向きを変えて skill2 を呼ぶ（skill2 の rotate @s ~ ~ がこの向きを使う）。敵がいなければ出さない
# 自分（PvP で hitdamage が付いているとき）を狙わないように、自分に一時的なタグ skill_self を付けて除く
tag @s add skill_self
execute positioned ~ ~1.5 ~ facing entity @e[type=#tm_rpg:mob_type,tag=mob,tag=hitdamage,tag=!skill_self,distance=..16,sort=nearest,limit=1] eyes summon minecraft:item_display run function tm_rpg:player/skill/test_pro/skill2
tag @s remove skill_self

# 3つ目の弾: 向いている方向から右に45°・上に30°に出し、近くの敵を追尾する（設定は skill4）
execute positioned ~ ~1.5 ~ rotated ~45 ~-30 summon minecraft:item_display run function tm_rpg:player/skill/test_pro/skill4

# 4つ目の弾: 左向き（横に -90°、水平）に出し、敵・壁に当たったときと時間切れで爆発する（設定は skill5）
execute positioned ~ ~1.5 ~ rotated ~-90 0 summon minecraft:item_display run function tm_rpg:player/skill/test_pro/skill5

return 1
