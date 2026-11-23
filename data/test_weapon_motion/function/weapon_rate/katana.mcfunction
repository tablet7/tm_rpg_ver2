#> test_weapon_motion:weapon_rate/katana

# 刀武器（基本モーション: katana）の右クリックの攻撃の倍率。katana/impact/* から、当たり判定 weapon_hit/front3 の前に呼ばれる
# 倍率は基本ダメージ（武器の custom_data の kihon + 参照ステータス × per / 100）に掛ける百分率
# 構えはプレイヤーの twm_kt_s（0 ＝ 納刀状態、1 ＝ 抜刀状態）で分ける。居合一閃（納刀4）は当たる時まだ納刀状態、納刀斬り（抜刀5）は抜刀状態
# 納刀状態の技は、当たった敵をさらに吹き飛ばす（ノックバック強め）
# 入力: #hit twm_tmp ＝ 何撃目か（構えごとに 1 から）
# 出力: #rate twm_tmp ＝ 倍率（百分率）、#kb twm_tmp ＝ さらに吹き飛ばす距離（マス。0 ＝ ふつうのノックバックだけ）
# @s ＝ プレイヤー

scoreboard players set #rate twm_tmp 100
scoreboard players set #kb twm_tmp 0

# 納刀状態（ノックバック強め: 3 マス吹き飛ばす）
execute if score @s twm_kt_s matches 0 run scoreboard players set #kb twm_tmp 3
# 1撃目 鞘払い
execute if score @s twm_kt_s matches 0 if score #hit twm_tmp matches 1 run scoreboard players set #rate twm_tmp 30
# 2撃目 鞘打ち下ろし
execute if score @s twm_kt_s matches 0 if score #hit twm_tmp matches 2 run scoreboard players set #rate twm_tmp 30
# 3撃目 鐺突き
execute if score @s twm_kt_s matches 0 if score #hit twm_tmp matches 3 run scoreboard players set #rate twm_tmp 30
# 4撃目 居合一閃
execute if score @s twm_kt_s matches 0 if score #hit twm_tmp matches 4 run scoreboard players set #rate twm_tmp 120

# 抜刀状態
# 1撃目 袈裟斬り
execute if score @s twm_kt_s matches 1 if score #hit twm_tmp matches 1 run scoreboard players set #rate twm_tmp 80
# 2撃目 横薙ぎ
execute if score @s twm_kt_s matches 1 if score #hit twm_tmp matches 2 run scoreboard players set #rate twm_tmp 80
# 3撃目 突き
execute if score @s twm_kt_s matches 1 if score #hit twm_tmp matches 3 run scoreboard players set #rate twm_tmp 80
# 4撃目 唐竹割り
execute if score @s twm_kt_s matches 1 if score #hit twm_tmp matches 4 run scoreboard players set #rate twm_tmp 120
# 5撃目 納刀斬り（遅れ斬撃）
execute if score @s twm_kt_s matches 1 if score #hit twm_tmp matches 5 run scoreboard players set #rate twm_tmp 200
