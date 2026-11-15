#> tm_rpg:player/skill/test/fire

# スキル「Test_damage」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/test から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

function tm_rpg:player/skill/shape/front3

# 見た目
#execute positioned ^ ^ ^3 positioned ~ ~1.8 ~ run particle dust{color:[1.0, 0.0, 0.0], scale:1.0} ~ ~ ~ 0 0 0 10 10
execute positioned ^ ^ ^3 positioned ~ ~0.5 ~ run particle minecraft:sweep_attack ~ ~1 ~ 1 0 1 0.1 20

# 音
playsound minecraft:entity.player.attack.strong player @a
