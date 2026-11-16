#> tm_rpg:player/skill/fly_slash/fx/cast_seq/t1

# スキル fly_slash の演出（cast）の 1 tick 目。fly_slash/fx/cast_seq から呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build fly_slash_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 進行役（at @s）

playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 0.5 1.4
particle minecraft:sweep_attack ^ ^1.5 ^2 0 0 0 0 1 force
particle minecraft:sweep_attack ^0.77 ^0.86 ^1.73 0 0 0 0 1 force
