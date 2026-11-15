#> tm_rpg:player/skill/test_obj_line/fire

# スキル「test設置物連続設置」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/test_obj_line から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

# 子（マグマブロック）1個の消えるまでの tick（20 ＝ 1秒）
data modify storage tm_rpg:damage kill_time set value 20

# 管理役を前方3マスに、足元の高さのマスの中心の高さで出す（rotated ~ 0 で上下の向きを無視する。横はマス目に合わせず、まっすぐ進めるようにする）
execute rotated ~ 0 positioned ^ ^ ^3 align y positioned ~ ~0.5 ~ summon minecraft:marker run function tm_rpg:player/skill/test_obj_line/skill2

# 音
playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 1 1
