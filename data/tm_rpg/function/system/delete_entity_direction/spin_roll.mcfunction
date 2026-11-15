#> tm_rpg:system/delete_entity_direction/spin_roll

# 見た目の演出: 表示エンティティ（item_display・block_display）を、前後の軸（向いている方向）のまわりに高速で回す（tag spin_roll）
# system/delete_entity_direction/image_main から毎 tick 呼ばれる。レーザーのガラスなど
# 毎 tick 90° ずつ回す（1秒に5回転）。transformation の left_rotation だけを書き換え、interpolation_duration（1）で間をなめらかに見せる
# 回す軸は transformation の前後（z）なので、scale と translation（長さ・前へずらす分）はそのまま使える
# 遅くしたいときは、1回の角度を 45° にして 8 段にする（90° より大きいと、逆向きに回って見える）
# スコア spin_step ＝ 今の段（0〜3）
# 出すときに interpolation_duration:1 を入れておくこと
# @s ＝ 回す表示エンティティ

scoreboard players add @s spin_step 1
execute if score @s spin_step matches 4.. run scoreboard players set @s spin_step 0

# 0° / 90° / 180° / 270°（z 軸まわりの四元数 [0, 0, sin(θ/2), cos(θ/2)]）
execute if score @s spin_step matches 0 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f]}}
execute if score @s spin_step matches 1 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0.7071f,0.7071f]}}
execute if score @s spin_step matches 2 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,1f,0f]}}
execute if score @s spin_step matches 3 run data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0.7071f,-0.7071f]}}
