#> tm_rpg:system/delete_entity_direction/float_bob

# 見た目の演出: 上下にゆっくり揺らす（tag float_bob）。system/delete_entity_direction/image_main から毎 tick 呼ばれる
# スコア bob_timer で 40 tick を1周にし、前半 20 tick は上へ、後半 20 tick は下へ 0.025 マスずつ動かす（0.5 マスの幅で揺れる）
# 揺れ始めをずらしたいときは、出すときに bob_timer に 0〜39 を入れる。滑らかに見せるには teleport_duration:1 を付ける
# @s ＝ 揺らすエンティティ（at @s）

scoreboard players add @s bob_timer 1
execute if score @s bob_timer matches 40.. run scoreboard players set @s bob_timer 0
execute if score @s bob_timer matches ..19 run tp @s ~ ~0.025 ~
execute if score @s bob_timer matches 20.. run tp @s ~ ~-0.025 ~
