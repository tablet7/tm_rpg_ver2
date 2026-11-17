#> tm_rpg:test/enemy_skill/use

# 敵用スキルのまとめテストで、#step test_skill 番目のスキルを使わせて、名前をチャットに出す。test/enemy_skill/tick から呼ばれる
# 新しく敵用スキルを作ったら、ここに2行（名前と呼び出し）を足し、test/enemy_skill/tick の「全部終わったら」の番号（今は 23）を1つ増やす
# @s ＝ テスト用の敵（at @s。向き ＝ いちばん近いプレイヤーの目の方）

# 1: 予兆を付けない攻撃（追尾弾をふくむ test_pro だけ。ほかのダメージを与える技は、予兆付きの入口だけ）
execute if score #step test_skill matches 1 run tellraw @a [{"text":"[敵スキルテスト] 1/22 ","color":"gold"},{"text":"test_pro（弾）","color":"white"}]
execute if score #step test_skill matches 1 run function tm_rpg:enemy/skill/test_pro

# 2〜5: 移動のスキル（テスト用の敵は NoAI なので、動かないこともある。そのときは Motion が効いていない）
execute if score #step test_skill matches 2 run tellraw @a [{"text":"[敵スキルテスト] 2/22 ","color":"gold"},{"text":"move/front_dash（前ダッシュ）","color":"white"}]
execute if score #step test_skill matches 2 run function tm_rpg:enemy/skill/move/front_dash
execute if score #step test_skill matches 3 run tellraw @a [{"text":"[敵スキルテスト] 3/22 ","color":"gold"},{"text":"move/left_step（左ステップ）","color":"white"}]
execute if score #step test_skill matches 3 run function tm_rpg:enemy/skill/move/left_step
execute if score #step test_skill matches 4 run tellraw @a [{"text":"[敵スキルテスト] 4/22 ","color":"gold"},{"text":"move/back_jump（バックジャンプ）","color":"white"}]
execute if score #step test_skill matches 4 run function tm_rpg:enemy/skill/move/back_jump
execute if score #step test_skill matches 5 run tellraw @a [{"text":"[敵スキルテスト] 5/22 ","color":"gold"},{"text":"move/up_jump（真上）","color":"white"}]
execute if score #step test_skill matches 5 run function tm_rpg:enemy/skill/move/up_jump

# 6〜17: 予兆を出してから使う（赤い板が出て、少しあとに技が出る）。18: タレット（置くときは予兆なし。撃つ 1 秒前にタレットが板を出す）
execute if score #step test_skill matches 6 run tellraw @a [{"text":"[敵スキルテスト] 6/22 ","color":"gold"},{"text":"warn_test_laser（予兆 → 太いレーザー）","color":"white"}]
execute if score #step test_skill matches 6 run function tm_rpg:enemy/skill/warn_test_laser
execute if score #step test_skill matches 7 run tellraw @a [{"text":"[敵スキルテスト] 7/22 ","color":"gold"},{"text":"warn_test_push（予兆の輪 → 吹き飛ばし）","color":"white"}]
execute if score #step test_skill matches 7 run function tm_rpg:enemy/skill/warn_test_push
execute if score #step test_skill matches 8 run tellraw @a [{"text":"[敵スキルテスト] 8/22 ","color":"gold"},{"text":"warn_test_sword_rain（予兆 → 剣の雨）","color":"white"}]
execute if score #step test_skill matches 8 run function tm_rpg:enemy/skill/warn_test_sword_rain
execute if score #step test_skill matches 9 run tellraw @a [{"text":"[敵スキルテスト] 9/22 ","color":"gold"},{"text":"warn_test_sword_volley（予兆 → 剣の一斉射撃）","color":"white"}]
execute if score #step test_skill matches 9 run function tm_rpg:enemy/skill/warn_test_sword_volley
execute if score #step test_skill matches 10 run tellraw @a [{"text":"[敵スキルテスト] 10/22 ","color":"gold"},{"text":"warn_fly_slash（予兆 → 飛斬）","color":"white"}]
execute if score #step test_skill matches 10 run function tm_rpg:enemy/skill/warn_fly_slash
execute if score #step test_skill matches 11 run tellraw @a [{"text":"[敵スキルテスト] 11/22 ","color":"gold"},{"text":"warn_test（予兆 → 前方の範囲攻撃 front3）","color":"white"}]
execute if score #step test_skill matches 11 run function tm_rpg:enemy/skill/warn_test
execute if score #step test_skill matches 12 run tellraw @a [{"text":"[敵スキルテスト] 12/22 ","color":"gold"},{"text":"warn_test_obj（予兆 → 設置物）","color":"white"}]
execute if score #step test_skill matches 12 run function tm_rpg:enemy/skill/warn_test_obj
execute if score #step test_skill matches 13 run tellraw @a [{"text":"[敵スキルテスト] 13/22 ","color":"gold"},{"text":"warn_test_obj_repeat（予兆 → くり返し当たる設置物）","color":"white"}]
execute if score #step test_skill matches 13 run function tm_rpg:enemy/skill/warn_test_obj_repeat
execute if score #step test_skill matches 14 run tellraw @a [{"text":"[敵スキルテスト] 14/22 ","color":"gold"},{"text":"warn_test_obj_line（予兆 → 並べる設置物）","color":"white"}]
execute if score #step test_skill matches 14 run function tm_rpg:enemy/skill/warn_test_obj_line
execute if score #step test_skill matches 15 run tellraw @a [{"text":"[敵スキルテスト] 15/22 ","color":"gold"},{"text":"warn_test_laser_sweep（予兆 → 振り上げレーザー）","color":"white"}]
execute if score #step test_skill matches 15 run function tm_rpg:enemy/skill/warn_test_laser_sweep
execute if score #step test_skill matches 16 run tellraw @a [{"text":"[敵スキルテスト] 16/22 ","color":"gold"},{"text":"warn_test_laser_circle（予兆 → 円レーザー）","color":"white"}]
execute if score #step test_skill matches 16 run function tm_rpg:enemy/skill/warn_test_laser_circle
execute if score #step test_skill matches 17 run tellraw @a [{"text":"[敵スキルテスト] 17/22 ","color":"gold"},{"text":"warn_test_laser_twin（予兆 → 双子レーザー）","color":"white"}]
execute if score #step test_skill matches 17 run function tm_rpg:enemy/skill/warn_test_laser_twin
execute if score #step test_skill matches 18 run tellraw @a [{"text":"[敵スキルテスト] 18/22 ","color":"gold"},{"text":"test_turret（タレット。置くときは予兆なし・撃つ 1 秒前に予兆。テストの最後に消す）","color":"white"}]
execute if score #step test_skill matches 18 run function tm_rpg:enemy/skill/test_turret
execute if score #step test_skill matches 19 run tellraw @a [{"text":"[敵スキルテスト] 19/22 ","color":"gold"},{"text":"warn_ice_breath（予兆 → 氷のブレス）","color":"white"}]
execute if score #step test_skill matches 19 run function tm_rpg:enemy/skill/warn_ice_breath
execute if score #step test_skill matches 20 run tellraw @a [{"text":"[敵スキルテスト] 20/22 ","color":"gold"},{"text":"warn_fire_dash（予兆（溜め）→ 炎の突進）","color":"white"}]
execute if score #step test_skill matches 20 run function tm_rpg:enemy/skill/warn_fire_dash
execute if score #step test_skill matches 21 run tellraw @a [{"text":"[敵スキルテスト] 21/22 ","color":"gold"},{"text":"warn_light_cross（光の矢 → 当たると十字架3本（輪の予兆つき））","color":"white"}]
execute if score #step test_skill matches 21 run function tm_rpg:enemy/skill/warn_light_cross
execute if score #step test_skill matches 22 run tellraw @a [{"text":"[敵スキルテスト] 22/22 ","color":"gold"},{"text":"warn_fairy（妖精（前方10マス・左右2マスを一度に引き裂く））","color":"white"}]
execute if score #step test_skill matches 22 run function tm_rpg:enemy/skill/warn_fairy

scoreboard players add #step test_skill 1
