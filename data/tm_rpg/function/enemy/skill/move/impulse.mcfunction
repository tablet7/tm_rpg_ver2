#> tm_rpg:enemy/skill/move/impulse

# 敵に速度を与える汎用関数（Motion を書きかえる）。enemy/skill/move/<スキル> から呼ばれる
# プレイヤー用の player/dash/impulse と同じ入力。プレイヤーは Motion を書きかえられないのでエンチャントを使うが、敵は Motion を直接入れる
# 入力（@s のスコア。単位は 0.01 ブロック/tick）
#   dash_x: 右が +、左が -（実行時の横の向きが基準）
#   dash_y: 上が +、下が -（ワールドの上下）
#   dash_z: 前が +、後ろが -（実行時の横の向きが基準）
# 向きは実行時の向き（横だけ使う）。at @s なら敵の向き、facing entity @p feet などで呼べばプレイヤーの方へ動く
# 速度は今の速度に足さず、入れかえる（AI の歩きより強く、決まった速さで動く）
# @s ＝ 敵（マーカーで向きの単位ベクトルを求める。三角関数をスコアで計算しないため）

# 向き（横だけ）の前方向の単位ベクトル（1000倍）を #dash_fx / #dash_fz temp に求める
execute positioned as @s rotated ~ 0 summon minecraft:marker run function tm_rpg:enemy/skill/move/impulse_vec

# 前 (fx, fz)、右 (-fz, fx) なので
#   x = dash_z × fx − dash_x × fz
#   z = dash_z × fz + dash_x × fx
scoreboard players operation #dash_vx temp = @s dash_z
scoreboard players operation #dash_vx temp *= #dash_fx temp
scoreboard players operation #dash_t temp = @s dash_x
scoreboard players operation #dash_t temp *= #dash_fz temp
scoreboard players operation #dash_vx temp -= #dash_t temp

scoreboard players operation #dash_vz temp = @s dash_z
scoreboard players operation #dash_vz temp *= #dash_fz temp
scoreboard players operation #dash_t temp = @s dash_x
scoreboard players operation #dash_t temp *= #dash_fx temp
scoreboard players operation #dash_vz temp += #dash_t temp

# Motion（ブロック/tick）。x・z は 0.01 × 1/1000 ＝ 0.00001 倍、y は 0.01 倍
execute store result entity @s Motion[0] double 0.00001 run scoreboard players get #dash_vx temp
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s dash_y
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get #dash_vz temp
