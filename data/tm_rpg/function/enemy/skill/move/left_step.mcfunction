#> tm_rpg:enemy/skill/move/left_step

# 敵がスキル「左ステップ」を使う関数。敵の行動の関数から呼ぶ（プレイヤー用は player/skill/move/left_step）
# 敵に速度を与える（enemy/skill/move/impulse。Motion を書きかえる）
# 向き ＝ 実行時の横の向き。at @s なら敵の向き、プレイヤーを基準にするなら facing で向きを入れて呼ぶ
#   例: execute as <敵> at @s facing entity @p[distance=..16] feet run function tm_rpg:enemy/skill/move/left_step
# @s ＝ スキルを使う敵

# 速さ（0.01 ブロック/tick 単位。プレイヤー用と同じ値）。dash_x 右+ / dash_y 上+ / dash_z 前+
scoreboard players set @s dash_x -120
scoreboard players set @s dash_y 20
scoreboard players set @s dash_z 0
function tm_rpg:enemy/skill/move/impulse

# 見た目・音
particle minecraft:cloud ~ ~0.2 ~ 0.3 0.1 0.3 0.02 8
playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 0.6 1.6
