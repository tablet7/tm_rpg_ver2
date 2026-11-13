#> tm_rpg:player/skill/move/left_step/skill1

# スキル「左ステップ（左へ素早く移動する）」の入口。custom_data の skill から player/skill/run 経由で呼ばれる
# プレイヤーに速度を加える（player/dash/impulse）。いつも成功（1 を返す）
# 続きの処理は同じフォルダに skill2, skill3 … として作り、ここから呼ぶ
# @s ＝ スキルを使ったプレイヤー（at @s）

# 速さ（0.01 ブロック/tick 単位、-315〜315）。dash_x 右+ / dash_y 上+ / dash_z 前+
scoreboard players set @s dash_x -120
scoreboard players set @s dash_y 20
scoreboard players set @s dash_z 0
function tm_rpg:player/dash/impulse

# 見た目・音
particle minecraft:cloud ~ ~0.2 ~ 0.3 0.1 0.3 0.02 8
playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.6 1.6

return 1
