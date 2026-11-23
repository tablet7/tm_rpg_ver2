#> tm_rpg:player/skill/wolf_slam/fx/cast_seq/t1

# スキル wolf_slam の演出（cast）の 1 tick 目。wolf_slam/fx/cast_seq から呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build wolf_slam_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 進行役（at @s）

playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.7
playsound minecraft:block.anvil.land hostile @a ~ ~ ~ 0.6 0.5
particle minecraft:cloud ~2 ~0.2 ~ 1 0 0 0.08 0 force
particle minecraft:cloud ~1.85 ~0.2 ~0.77 0.92 0 0.38 0.08 0 force
particle minecraft:cloud ~1.41 ~0.2 ~1.41 0.71 0 0.71 0.08 0 force
particle minecraft:cloud ~0.77 ~0.2 ~1.85 0.38 0 0.92 0.08 0 force
particle minecraft:cloud ~ ~0.2 ~2 0 0 1 0.08 0 force
particle minecraft:cloud ~-0.77 ~0.2 ~1.85 -0.38 0 0.92 0.08 0 force
particle minecraft:cloud ~-1.41 ~0.2 ~1.41 -0.71 0 0.71 0.08 0 force
particle minecraft:cloud ~-1.85 ~0.2 ~0.77 -0.92 0 0.38 0.08 0 force
particle minecraft:cloud ~-2 ~0.2 ~ -1 0 0 0.08 0 force
particle minecraft:cloud ~-1.85 ~0.2 ~-0.77 -0.92 0 -0.38 0.08 0 force
particle minecraft:cloud ~-1.41 ~0.2 ~-1.41 -0.71 0 -0.71 0.08 0 force
particle minecraft:cloud ~-0.77 ~0.2 ~-1.85 -0.38 0 -0.92 0.08 0 force
particle minecraft:cloud ~ ~0.2 ~-2 0 0 -1 0.08 0 force
particle minecraft:cloud ~0.77 ~0.2 ~-1.85 0.38 0 -0.92 0.08 0 force
particle minecraft:cloud ~1.41 ~0.2 ~-1.41 0.71 0 -0.71 0.08 0 force
particle minecraft:cloud ~1.85 ~0.2 ~-0.77 0.92 0 -0.38 0.08 0 force
