#> tm_rpg:player/skill/main_projectile/beam/hit

# 太いレーザー（tag beam）の当たり判定。system/delete_entity_direction/damage_main から呼ばれる（hit_interval があれば、当たる tick だけ）
# 線に沿って 2マスごとに、共通の当たり判定（main_projectile/hit。呼んだ場所が箱の中心）を動かす
# 1回の当たり判定では id が同じなので、2つの箱に重なった敵にも1回だけ当たる
# 箱を 3マス四方（hit_size 3）にすると、2マスごとの箱が重なって、すきまなく当たる
# 戻り値: 0（消えない）
# @s ＝ レーザー（at @s。向き ＝ 撃つ向き）

scoreboard players operation #beam_left temp = @s beam_length
execute positioned ^ ^ ^1 run function tm_rpg:player/skill/main_projectile/beam/hit_loop
return 0
