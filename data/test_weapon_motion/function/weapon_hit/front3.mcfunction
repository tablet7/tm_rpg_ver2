#> test_weapon_motion:weapon_hit/front3

# 武器の右クリックの攻撃の当たり判定。各武器の impact（当たる瞬間の演出）から、weapon_rate/<種類> のあとに呼ばれる
# メインハンドの武器の custom_data から基本ダメージを求めて倍率 #rate を掛け（weapon_hit/damage）、
# tm_rpg の範囲の形 tm_rpg:player/skill/shape/front3（前方3マス先・高さ +1.8 を中心に半径3）で、敵にダメージとふつうのノックバックを与える
# #kb が 1 以上なら、当たった敵をさらにプレイヤーから離れる向きへ吹き飛ばす（weapon_hit/push）
# 入力: #rate twm_tmp ＝ 倍率（百分率）、#kb twm_tmp ＝ さらに吹き飛ばす距離（マス。0 ＝ なし）
# 戻り値: 当たった敵の数
# @s ＝ プレイヤー（at @s。向きも使う）

# ダメージ（storage tm_rpg:damage）
function test_weapon_motion:weapon_hit/damage

# プレイヤーが使う技として当てる（front3 は #skill_side temp が 1 だとプレイヤーにだけ当たる）
scoreboard players set #skill_side temp 0
scoreboard players set #hit_n twm_tmp 0
execute store result score #hit_n twm_tmp run function tm_rpg:player/skill/shape/front3

# ノックバック強め
execute if score #kb twm_tmp matches 1.. if score #hit_n twm_tmp matches 1.. run function test_weapon_motion:weapon_hit/push

return run scoreboard players get #hit_n twm_tmp
