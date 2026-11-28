#> tm_rpg:system/abnormal/resist

# 状態異常の威力と時間を、受けた人の付与効果増加（sustain_power）・持続時間増加（sustain_time）で弱める関数。system/abnormal/add/<名前> の最初に呼ばれる
# プレイヤーも敵も同じ決まり（威力 4 の状態異常を、付与効果増加 100 の相手が受けると 0 になり、効かない。時間も同じ）
# 入力: #ab_potency temp ＝ 足す威力、#ab_time temp ＝ 足す時間（秒）（どちらも書き換えない。範囲の技で何人に続けて付けても、全員が同じ値から弱める）
# 出力: #ab_v temp ＝ 弱めたあとの威力、#ab_t temp ＝ 弱めたあとの時間。どちらも 1 以上なら 1 を返し、どちらかが 0 以下なら付けない（return fail）
# @s ＝ 状態異常を付ける相手（プレイヤーか敵）

scoreboard players operation #ab_v temp = #ab_potency temp
scoreboard players operation #ab_v temp -= @s sustain_power
execute unless score #ab_v temp matches 1.. run return fail

scoreboard players operation #ab_t temp = #ab_time temp
scoreboard players operation #ab_t temp -= @s sustain_time
execute unless score #ab_t temp matches 1.. run return fail
return 1
