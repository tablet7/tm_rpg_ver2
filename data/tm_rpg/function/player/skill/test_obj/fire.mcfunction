#> tm_rpg:player/skill/test_obj/fire

# スキル「test設置物ダメージ」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/test_obj から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

# 消えるまでの tick（20 ＝ 1秒）
data modify storage tm_rpg:damage kill_time set value 20

# 前方3マスのマスに置く（rotated ~ 0 で上下の向きを無視し、align xyz でマスの中心に合わせる）。高さは skill2 の common/snap_ground で地面に合わせる
execute rotated ~ 0 positioned ^ ^ ^3 align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:item_display run function tm_rpg:player/skill/test_obj/skill2

# 音
playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1 1
