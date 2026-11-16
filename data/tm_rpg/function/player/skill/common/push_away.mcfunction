#> tm_rpg:player/skill/common/push_away

# 周りの敵を、使った人から遠ざけるように吹き飛ばす関数（共通）。スキルの fire から呼ぶ
# 敵の Motion（速度）を書きかえる（enemy/skill/move/impulse）。距離は「だいたい」（地面の摩擦・空気抵抗で少しずれる）
# 入力: #push_dist temp ＝ 飛ばす距離（マス。3〜15 くらい）。範囲（5 マス）は下の distance を書きかえる
# 吹き飛ばすのは敵（tag mob・hitdamage）だけ。プレイヤーは Motion を書きかえられないので飛ばない（PvP・敵が使ったときも）
# 戻り値: 吹き飛ばした数
# @s ＝ 使った人（at @s）

# 速さ（0.01 ブロック/tick）＝ 距離 × 100 / 8
#   上へ 0.4 ブロック/tick で浮かせて、空中を約 11 tick 飛ばす。空中では横の速さが毎 tick 0.91 倍になり、着地後に少し滑るので、
#   進む距離は最初の横の速さのだいたい 8 倍になる
scoreboard players operation #push_speed temp = #push_dist temp
scoreboard players set #push_k temp 25
scoreboard players operation #push_speed temp *= #push_k temp
scoreboard players set #push_k temp 2
scoreboard players operation #push_speed temp /= #push_k temp

# 5 マス以内の敵それぞれに、使った人の位置から敵の方を向いた向き（＝ 使った人から離れる向き。上下は無視）で速度を入れる
# 実行位置は使った人のまま、facing entity @s で敵の方を向く
tag @s add push_self
scoreboard players set #push_count temp 0
execute as @e[type=#tm_rpg:mob_type,tag=mob,tag=hitdamage,tag=!push_self,distance=..5] facing entity @s feet rotated ~ 0 run function tm_rpg:player/skill/common/push_one
tag @s remove push_self

return run scoreboard players get #push_count temp
