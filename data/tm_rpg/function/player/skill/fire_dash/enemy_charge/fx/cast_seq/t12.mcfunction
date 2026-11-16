#> tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast_seq/t12

# スキル fire_dash/enemy_charge の演出（cast）の 12 tick 目。fire_dash/enemy_charge/fx/cast_seq から呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build fire_dash_enemy_charge_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 進行役（at @s）

playsound minecraft:entity.blaze.burn player @a ~ ~ ~ 0.7 1.4
particle minecraft:flame ~1.07 ~0.1 ~ 0 0 0 0 1
particle minecraft:flame ~0.92 ~0.1 ~0.53 0 0 0 0 1
particle minecraft:flame ~0.53 ~0.1 ~0.92 0 0 0 0 1
particle minecraft:flame ~ ~0.1 ~1.07 0 0 0 0 1
particle minecraft:flame ~-0.53 ~0.1 ~0.92 0 0 0 0 1
particle minecraft:flame ~-0.92 ~0.1 ~0.53 0 0 0 0 1
particle minecraft:flame ~-1.07 ~0.1 ~ 0 0 0 0 1
particle minecraft:flame ~-0.92 ~0.1 ~-0.53 0 0 0 0 1
particle minecraft:flame ~-0.53 ~0.1 ~-0.92 0 0 0 0 1
particle minecraft:flame ~ ~0.1 ~-1.07 0 0 0 0 1
particle minecraft:flame ~0.53 ~0.1 ~-0.92 0 0 0 0 1
particle minecraft:flame ~0.92 ~0.1 ~-0.53 0 0 0 0 1
particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3
