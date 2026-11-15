#> tm_rpg:enemy/ai/candidate

# 技の候補を1つ数える・選ぶ（共通）。enemy/ai/<種類>/list から、使える技（重み #ai_w temp が 1 以上）ごとに呼ばれる
# #ai_id temp ＝ 技の番号、#ai_w temp ＝ 重み（大きいほど選ばれやすい）
#   1回目（#ai_pass 1）… 重みを #ai_sum temp に足す
#   2回目（#ai_pass 2）… まだ選んでいなければ、#ai_roll temp が重みより小さいとき、この技を選ぶ（#ai_pick temp）。違えば #ai_roll から重みを引いて次へ
# @s ＝ 敵

execute if score #ai_pass temp matches 1 run return run scoreboard players operation #ai_sum temp += #ai_w temp

execute if score #ai_pick temp matches 1.. run return 0
execute if score #ai_roll temp < #ai_w temp run return run scoreboard players operation #ai_pick temp = #ai_id temp
scoreboard players operation #ai_roll temp -= #ai_w temp
