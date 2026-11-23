#> test_weapon_motion:weapon_hit/push

# 当たり判定（weapon_hit/front3）で当たった敵を、プレイヤーから離れる向きへ #kb マス吹き飛ばす（ノックバック強め）。weapon_hit/front3 から呼ばれる
# 範囲は tm_rpg:player/skill/shape/front3 と同じ（前方3マス先・高さ +1.8 を中心に半径3）。飛ばすのは tm_rpg:player/skill/common/push_one（敵の Motion を書きかえる）
# 速さ（0.01 ブロック/tick）＝ 距離 × 100 / 8（tm_rpg:player/skill/common/push_away と同じ。距離は「だいたい」）
# ふつうのノックバック（damage_dealt の damage）は Motion を上書きされるので、この速さで飛ぶ
# 入力: #kb twm_tmp ＝ 距離（マス）
# @s ＝ プレイヤー（at @s。向きも使う）

scoreboard players operation #push_speed temp = #kb twm_tmp
scoreboard players set #push_k temp 25
scoreboard players operation #push_speed temp *= #push_k temp
scoreboard players set #push_k temp 2
scoreboard players operation #push_speed temp /= #push_k temp

# front3 と同じ範囲・同じ条件（tag=!nodamage）の敵に印を付ける（自分は除く）
tag @s add twm_push_self
execute positioned ^ ^ ^3 positioned ~ ~1.8 ~ run tag @e[type=#tm_rpg:mob_type,distance=..3,tag=mob,tag=hitdamage,tag=!nodamage,tag=!twm_push_self] add twm_push
tag @s remove twm_push_self

# 実行位置はプレイヤーのまま、facing entity @s で敵の方を向く（＝ プレイヤーから離れる向き。上下は無視）
execute as @e[type=#tm_rpg:mob_type,tag=twm_push,distance=..8] facing entity @s feet rotated ~ 0 run function tm_rpg:player/skill/common/push_one
tag @e[type=#tm_rpg:mob_type,tag=twm_push,distance=..8] remove twm_push
