#> tm_rpg:player/skill/test_push/fire

# スキル「test吹き飛ばし」の本体。skill1 から呼ばれる
# 周り 5 マスの敵を、使った人から遠ざけるように、だいたい #push_dist マス吹き飛ばす（player/skill/common/push_away）。ダメージは与えない
# ダメージも与えたいスキルは、skill1 で skill_damage を呼び、ここで shape/front3 などの範囲攻撃を push_away の前に呼ぶ
# @s ＝ 使った人（at @s）

# 飛ばす距離（マス。3〜15）
scoreboard players set #push_dist temp 8

function tm_rpg:player/skill/common/push_away

# 見た目・音
particle minecraft:gust_emitter_small ~ ~1 ~ 0 0 0 0 1
playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 1 1
