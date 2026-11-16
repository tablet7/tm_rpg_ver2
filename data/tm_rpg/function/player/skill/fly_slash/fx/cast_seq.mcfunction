#> tm_rpg:player/skill/fly_slash/fx/cast_seq

# スキル fly_slash の演出（cast）の、時間差の部分。player/skill/fx/seq/run から毎 tick 呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build fly_slash_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 進行役（at @s）。スコア fx_t ＝ 出してからの tick 数

execute if score @s fx_t matches 1 run return run function tm_rpg:player/skill/fly_slash/fx/cast_seq/t1
execute if score @s fx_t matches 2 run particle minecraft:sweep_attack ^1.33 ^0.39 ^1 0 0 0 0 1 force
