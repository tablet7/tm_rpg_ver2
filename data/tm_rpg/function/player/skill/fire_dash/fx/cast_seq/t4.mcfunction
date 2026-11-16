#> tm_rpg:player/skill/fire_dash/fx/cast_seq/t4

# スキル fire_dash の演出（cast）の 4 tick 目。fire_dash/fx/cast_seq から呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build fire_dash_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 進行役（at @s）

playsound minecraft:entity.blaze.burn player @a ~ ~ ~ 0.7 1.2
particle minecraft:flame ~1.38 ~0.1 ~ 0 0 0 0 1
particle minecraft:flame ~1.19 ~0.1 ~0.69 0 0 0 0 1
particle minecraft:flame ~0.69 ~0.1 ~1.19 0 0 0 0 1
particle minecraft:flame ~ ~0.1 ~1.38 0 0 0 0 1
particle minecraft:flame ~-0.69 ~0.1 ~1.19 0 0 0 0 1
particle minecraft:flame ~-1.19 ~0.1 ~0.69 0 0 0 0 1
particle minecraft:flame ~-1.38 ~0.1 ~ 0 0 0 0 1
particle minecraft:flame ~-1.19 ~0.1 ~-0.69 0 0 0 0 1
particle minecraft:flame ~-0.69 ~0.1 ~-1.19 0 0 0 0 1
particle minecraft:flame ~ ~0.1 ~-1.38 0 0 0 0 1
particle minecraft:flame ~0.69 ~0.1 ~-1.19 0 0 0 0 1
particle minecraft:flame ~1.19 ~0.1 ~-0.69 0 0 0 0 1
particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3
