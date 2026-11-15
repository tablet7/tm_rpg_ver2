#> tm_rpg:player/skill/main_projectile/explode_fx/blast

# 爆発の見た目「爆発」（tag explode_fx_blast）。爆発のパーティクルと音を出す。main_projectile/explode から呼ばれる
# @s ＝ 爆発する弾（at @s）

particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 3
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.2
