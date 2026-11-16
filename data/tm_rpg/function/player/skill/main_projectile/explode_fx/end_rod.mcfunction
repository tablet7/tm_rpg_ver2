#> tm_rpg:player/skill/main_projectile/explode_fx/end_rod

# 爆発の見た目「光の拡散」（tag explode_fx_end_rod）。end_rod のパーティクルを周りに広げる。main_projectile/explode から呼ばれる
# 広がり方は speed（0.3）で決まる（delta を 0 にすると、パーティクルがばらばらの向きに speed で飛ぶ）。数はゲーム内で調整する
# @s ＝ 爆発する弾（at @s）

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.3 60
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1.2
