#> test_weapon_motion:weapon_rate/two_hand

# 両手武器（基本モーション: dual_sword）の右クリックの攻撃の倍率。dual_sword/impact/* から、当たり判定 weapon_hit/front3 の前に呼ばれる
# 倍率は基本ダメージ（武器の custom_data の kihon + 参照ステータス × per / 100）に掛ける百分率
# 入力: #hit twm_tmp ＝ 何撃目か
# 出力: #rate twm_tmp ＝ 倍率（百分率）、#kb twm_tmp ＝ さらに吹き飛ばす距離（マス。0 ＝ ふつうのノックバックだけ）
# @s ＝ プレイヤー

scoreboard players set #rate twm_tmp 100
scoreboard players set #kb twm_tmp 0

# 1撃目 左の袈裟斬り
execute if score #hit twm_tmp matches 1 run scoreboard players set #rate twm_tmp 50
# 2撃目 左の低い薙ぎ
execute if score #hit twm_tmp matches 2 run scoreboard players set #rate twm_tmp 50
# 3撃目 右の突き
execute if score #hit twm_tmp matches 3 run scoreboard players set #rate twm_tmp 70
# 4撃目 左の斬り上げ
execute if score #hit twm_tmp matches 4 run scoreboard players set #rate twm_tmp 70
# 5撃目 右の逆袈裟
execute if score #hit twm_tmp matches 5 run scoreboard players set #rate twm_tmp 70
# 6撃目 交差斬り
execute if score #hit twm_tmp matches 6 run scoreboard players set #rate twm_tmp 120
