#> tm_rpg:player/skill/main_projectile/beam/circle_step

# 円を描く太いレーザーの、円の上の位置（circle_ox / circle_oy）を 1 tick ぶん回す。main_projectile/beam/sweep から呼ばれる
# 三角関数を使わず、左右のずれと上下のずれを互いに少しずつ足し合う（ox ← ox − oy × k、oy ← oy + 新しい ox × k。k ＝ 1 tick の角度）
# この順に足すと、円の大きさがずれていかない
# ox は + で右、oy は + で下。右回り（k が +）なら、いちばん上 → 右 → 下 → 左 の順に回る
# @s ＝ レーザー

scoreboard players set #beam_k temp 1000

scoreboard players operation #circle_d temp = @s circle_oy
scoreboard players operation #circle_d temp *= @s circle_k
scoreboard players operation #circle_d temp /= #beam_k temp
scoreboard players operation @s circle_ox -= #circle_d temp

scoreboard players operation #circle_d temp = @s circle_ox
scoreboard players operation #circle_d temp *= @s circle_k
scoreboard players operation #circle_d temp /= #beam_k temp
scoreboard players operation @s circle_oy += #circle_d temp
