#> tm_rpg:player/skill/wolf_tail/fx/cast_seq

# スキル wolf_tail の演出（cast）の、時間差の部分。player/skill/fx/seq/run から毎 tick 呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build wolf_tail_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 進行役（at @s）。スコア fx_t ＝ 出してからの tick 数

execute if score @s fx_t matches 1 run return run function tm_rpg:player/skill/wolf_tail/fx/cast_seq/t1
execute if score @s fx_t matches 2 run return run function tm_rpg:player/skill/wolf_tail/fx/cast_seq/t2
execute if score @s fx_t matches 3 run return run function tm_rpg:player/skill/wolf_tail/fx/cast_seq/t3
execute if score @s fx_t matches 4 run particle minecraft:sweep_attack ^5.35 ^1 ^5.95 0 0 0 0 1 force
execute if score @s fx_t matches 5 run particle minecraft:sweep_attack ^2.6 ^1 ^7.56 0 0 0 0 1 force
execute if score @s fx_t matches 6 run return run function tm_rpg:player/skill/wolf_tail/fx/cast_seq/t6
execute if score @s fx_t matches 7 run particle minecraft:sweep_attack ^-6.13 ^1 ^5.14 0 0 0 0 1 force
execute if score @s fx_t matches 8 run particle minecraft:sweep_attack ^-7.65 ^1 ^2.34 0 0 0 0 1 force
execute if score @s fx_t matches 9 run particle minecraft:sweep_attack ^-7.96 ^1 ^-0.84 0 0 0 0 1 force
execute if score @s fx_t matches 9 run particle minecraft:sweep_attack ^-7 ^1 ^-3.88 0 0 0 0 1 force
execute if score @s fx_t matches 10 run particle minecraft:sweep_attack ^-4.93 ^1 ^-6.3 0 0 0 0 1 force
execute if score @s fx_t matches 11 run particle minecraft:sweep_attack ^-2.07 ^1 ^-7.73 0 0 0 0 1 force
