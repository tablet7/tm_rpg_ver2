#> tm_rpg:player/skill/wolf_swipe/fx/cast_seq/t1

# スキル wolf_swipe の演出（cast）の 1 tick 目。wolf_swipe/fx/cast_seq から呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build wolf_swipe_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 進行役（at @s）

playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.8 0.5
particle minecraft:sweep_attack ^1.11 ^1 ^9.92 0 0 0 0 1 force
particle minecraft:sweep_attack ^-1.11 ^1 ^9.92 0 0 0 0 1 force
