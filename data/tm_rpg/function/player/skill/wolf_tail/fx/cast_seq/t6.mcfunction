#> tm_rpg:player/skill/wolf_tail/fx/cast_seq/t6

# スキル wolf_tail の演出（cast）の 6 tick 目。wolf_tail/fx/cast_seq から呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build wolf_tail_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 進行役（at @s）

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.5 0.7
particle minecraft:sweep_attack ^-0.56 ^1 ^7.98 0 0 0 0 1 force
particle minecraft:sweep_attack ^-3.63 ^1 ^7.13 0 0 0 0 1 force
