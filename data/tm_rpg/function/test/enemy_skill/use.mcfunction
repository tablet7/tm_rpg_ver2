#> tm_rpg:test/enemy_skill/use

# 敵用スキルのまとめテストで、#step test_skill 番目のスキルを使わせて、名前をチャットに出す。test/enemy_skill/tick から呼ばれる
# 新しく敵用スキルを作ったら、ここに2行（名前と呼び出し）を足し、test/enemy_skill/tick の「全部終わったら」の番号（今は 18）を1つ増やす
# @s ＝ テスト用の敵（at @s。向き ＝ いちばん近いプレイヤーの目の方）

# 1〜13: 攻撃のスキル
execute if score #step test_skill matches 1 run tellraw @a [{"text":"[敵スキルテスト] 1/17 ","color":"gold"},{"text":"test（前方の範囲攻撃 front3）","color":"white"}]
execute if score #step test_skill matches 1 run function tm_rpg:enemy/skill/test
execute if score #step test_skill matches 2 run tellraw @a [{"text":"[敵スキルテスト] 2/17 ","color":"gold"},{"text":"test_pro（弾）","color":"white"}]
execute if score #step test_skill matches 2 run function tm_rpg:enemy/skill/test_pro
execute if score #step test_skill matches 3 run tellraw @a [{"text":"[敵スキルテスト] 3/17 ","color":"gold"},{"text":"test_obj（設置物）","color":"white"}]
execute if score #step test_skill matches 3 run function tm_rpg:enemy/skill/test_obj
execute if score #step test_skill matches 4 run tellraw @a [{"text":"[敵スキルテスト] 4/17 ","color":"gold"},{"text":"test_obj_repeat（くり返し当たる設置物）","color":"white"}]
execute if score #step test_skill matches 4 run function tm_rpg:enemy/skill/test_obj_repeat
execute if score #step test_skill matches 5 run tellraw @a [{"text":"[敵スキルテスト] 5/17 ","color":"gold"},{"text":"test_obj_line（並べる設置物）","color":"white"}]
execute if score #step test_skill matches 5 run function tm_rpg:enemy/skill/test_obj_line
execute if score #step test_skill matches 6 run tellraw @a [{"text":"[敵スキルテスト] 6/17 ","color":"gold"},{"text":"test_sword_rain（剣の雨）","color":"white"}]
execute if score #step test_skill matches 6 run function tm_rpg:enemy/skill/test_sword_rain
execute if score #step test_skill matches 7 run tellraw @a [{"text":"[敵スキルテスト] 7/17 ","color":"gold"},{"text":"test_sword_volley（剣の一斉射撃）","color":"white"}]
execute if score #step test_skill matches 7 run function tm_rpg:enemy/skill/test_sword_volley
execute if score #step test_skill matches 8 run tellraw @a [{"text":"[敵スキルテスト] 8/17 ","color":"gold"},{"text":"test_laser（太いレーザー）","color":"white"}]
execute if score #step test_skill matches 8 run function tm_rpg:enemy/skill/test_laser
execute if score #step test_skill matches 9 run tellraw @a [{"text":"[敵スキルテスト] 9/17 ","color":"gold"},{"text":"test_laser_sweep（振り上げレーザー）","color":"white"}]
execute if score #step test_skill matches 9 run function tm_rpg:enemy/skill/test_laser_sweep
execute if score #step test_skill matches 10 run tellraw @a [{"text":"[敵スキルテスト] 10/17 ","color":"gold"},{"text":"test_laser_circle（円レーザー）","color":"white"}]
execute if score #step test_skill matches 10 run function tm_rpg:enemy/skill/test_laser_circle
execute if score #step test_skill matches 11 run tellraw @a [{"text":"[敵スキルテスト] 11/17 ","color":"gold"},{"text":"test_laser_twin（双子レーザー）","color":"white"}]
execute if score #step test_skill matches 11 run function tm_rpg:enemy/skill/test_laser_twin
execute if score #step test_skill matches 12 run tellraw @a [{"text":"[敵スキルテスト] 12/17 ","color":"gold"},{"text":"test_turret（タレット。テストの最後に消す）","color":"white"}]
execute if score #step test_skill matches 12 run function tm_rpg:enemy/skill/test_turret
execute if score #step test_skill matches 13 run tellraw @a [{"text":"[敵スキルテスト] 13/17 ","color":"gold"},{"text":"test_push（風の爆発で吹き飛ばす）","color":"white"}]
execute if score #step test_skill matches 13 run function tm_rpg:enemy/skill/test_push

# 14〜17: 移動のスキル（テスト用の敵は NoAI なので、動かないこともある。そのときは Motion が効いていない）
execute if score #step test_skill matches 14 run tellraw @a [{"text":"[敵スキルテスト] 14/17 ","color":"gold"},{"text":"move/front_dash（前ダッシュ）","color":"white"}]
execute if score #step test_skill matches 14 run function tm_rpg:enemy/skill/move/front_dash
execute if score #step test_skill matches 15 run tellraw @a [{"text":"[敵スキルテスト] 15/17 ","color":"gold"},{"text":"move/left_step（左ステップ）","color":"white"}]
execute if score #step test_skill matches 15 run function tm_rpg:enemy/skill/move/left_step
execute if score #step test_skill matches 16 run tellraw @a [{"text":"[敵スキルテスト] 16/17 ","color":"gold"},{"text":"move/back_jump（バックジャンプ）","color":"white"}]
execute if score #step test_skill matches 16 run function tm_rpg:enemy/skill/move/back_jump
execute if score #step test_skill matches 17 run tellraw @a [{"text":"[敵スキルテスト] 17/17 ","color":"gold"},{"text":"move/up_jump（真上）","color":"white"}]
execute if score #step test_skill matches 17 run function tm_rpg:enemy/skill/move/up_jump

scoreboard players add #step test_skill 1
