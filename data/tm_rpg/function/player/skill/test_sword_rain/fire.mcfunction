#> tm_rpg:player/skill/test_sword_rain/fire

# スキル「test剣の雨」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/test_sword_rain から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

# 剣1本の消えるまでの tick（50 ＝ 2.5秒。落ちるのに 5〜8 tick、残りは地面に刺さったまま残る）
data modify storage tm_rpg:damage kill_time set value 50

# 管理役を前方3マスに、足元の高さで出す（rotated ~ 0 で上下の向きを無視する。高さは地面に合わせない（軽い））
execute rotated ~ 0 positioned ^ ^ ^3 align y positioned ~ ~0.5 ~ summon minecraft:marker run function tm_rpg:player/skill/test_sword_rain/skill2
