#> tm_rpg:player/skill/fly_slash/fire

# スキル「飛斬」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/warn_fly_slash（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

# 消えるまでの tick（10 ＝ 0.5 秒。1 マス/tick で進むので、射程は約 10 マス）
data modify storage tm_rpg:damage kill_time set value 10

# 弾を、足元から 1.5 マス上に、向いている方向へ出す（出したばかりの弾が @s になって skill2 が動く）
execute positioned ~ ~1.5 ~ summon minecraft:item_display run function tm_rpg:player/skill/fly_slash/skill2

# 使ったときの演出
function tm_rpg:player/skill/fly_slash/fx/cast
