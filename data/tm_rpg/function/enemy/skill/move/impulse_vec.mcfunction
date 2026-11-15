#> tm_rpg:enemy/skill/move/impulse_vec

# 実行時の向きの前方向の単位ベクトル（1000倍）を #dash_fx / #dash_fz temp に入れて、自分（マーカー）を消す。enemy/skill/move/impulse から呼ばれる
# 出した場所と、^ ^ ^1 へ tp した場所の座標の差を使う
# @s ＝ 出したばかりのマーカー（実行位置 ＝ 敵の位置、向き ＝ 動く向き（横だけ））

execute store result score #dash_ox temp run data get entity @s Pos[0] 1000
execute store result score #dash_oz temp run data get entity @s Pos[2] 1000
tp @s ^ ^ ^1
execute store result score #dash_fx temp run data get entity @s Pos[0] 1000
execute store result score #dash_fz temp run data get entity @s Pos[2] 1000
scoreboard players operation #dash_fx temp -= #dash_ox temp
scoreboard players operation #dash_fz temp -= #dash_oz temp
kill @s
