#> tm_rpg:player/skill/main_projectile/beam/end_rod

# 太いレーザーの見た目: 線に沿って 2マスごとに end_rod のパーティクルを出す（tag beam_end_rod）。system/delete_entity_direction/image_main から毎 tick 呼ばれる
# @s ＝ レーザー（at @s。向き ＝ 撃つ向き）

scoreboard players operation #beam_left temp = @s beam_length
execute positioned ^ ^ ^1 run function tm_rpg:player/skill/main_projectile/beam/end_rod_loop
