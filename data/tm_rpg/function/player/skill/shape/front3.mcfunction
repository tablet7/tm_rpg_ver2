#> tm_rpg:player/skill/shape/front3

# 範囲の形の共通関数: 前方3マス先を中心に、半径3の敵にダメージを与える。各スキルの関数から呼ばれる
# 先に player/skill/skill_damage を呼んで storage tm_rpg:damage を作っておくこと
# 当たった敵の数を返す（0 ＝ 当たらなかった。execute unless function ... run return 0 で不発にできる）
# @s ＝ プレイヤー（at @s）

# 自分は当たらないように
tag @s add nodamage

# 当たる敵の数
execute unless score #skill_side temp matches 1 positioned ^ ^ ^3 positioned ~ ~1.8 ~ store result score #skill_hit temp if entity @e[type=#tm_rpg:mob_type,distance=..3,tag=mob,tag=hitdamage,tag=!nodamage]
# 敵が使ったとき（#skill_side temp が 1）は、プレイヤーにだけ当たる
execute if score #skill_side temp matches 1 positioned ^ ^ ^3 positioned ~ ~1.8 ~ store result score #skill_hit temp if entity @a[tag=mob,gamemode=!spectator,distance=..3]

# ノックバックを与える人（damage_dealt の damage ... by @e[tag=temp_victim]）。ダメージ本体のあとですぐ外す
# （ノックバックで「殴られた」判定が動いても、damage_dealt が入れる skill_kb_time で naguri/process_damage が飛ばす）
execute if score #skill_hit temp matches 1.. run tag @s add temp_victim

# ダメージ本体
execute unless score #skill_side temp matches 1 positioned ^ ^ ^3 positioned ~ ~1.8 ~ as @e[type=#tm_rpg:mob_type,distance=..3,tag=mob,tag=hitdamage,tag=!nodamage] at @s run function tm_rpg:system/damage_ex/damage_dealt
# 敵が使ったとき（#skill_side temp が 1）は、プレイヤーにだけ当たる
execute if score #skill_side temp matches 1 positioned ^ ^ ^3 positioned ~ ~1.8 ~ as @a[tag=mob,gamemode=!spectator,distance=..3] at @s run function tm_rpg:system/damage_ex/damage_dealt

tag @s remove nodamage
tag @s remove temp_victim

return run scoreboard players get #skill_hit temp
