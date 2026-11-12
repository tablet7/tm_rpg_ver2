#> tm_rpg:player/skill/shape/front3

# 範囲の形の共通関数: 前方3マス先を中心に、半径3の敵にダメージを与える。各スキルの関数から呼ばれる
# 先に player/skill/skill_damage を呼んで storage tm_rpg:damage を作っておくこと
# 当たった敵の数を返す（0 ＝ 当たらなかった。execute unless function ... run return 0 で不発にできる）
# @s ＝ プレイヤー（at @s）

data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

# 当たる敵の数
execute positioned ^ ^ ^3 positioned ~ ~1.8 ~ store result score #skill_hit temp if entity @e[type=#tm_rpg:mob_type,distance=..3,tag=mob,team=Enemy]
execute if score #skill_hit temp matches 0 run return 0

# ノックバック判定用（damage_dealt のノックバックで殴り判定が動いたとき、0ダメージにする）
tag @s add temp_victim
scoreboard players set @s temp_victim_remove 2

# ダメージ本体
execute positioned ^ ^ ^3 positioned ~ ~1.8 ~ as @e[type=#tm_rpg:mob_type,distance=..3,tag=mob,team=Enemy] at @s run function tm_rpg:system/damage_ex/damage_dealt

return run scoreboard players get #skill_hit temp
