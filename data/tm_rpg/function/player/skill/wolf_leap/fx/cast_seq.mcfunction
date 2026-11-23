#> tm_rpg:player/skill/wolf_leap/fx/cast_seq

# スキル wolf_leap の演出（cast）の、時間差の部分。player/skill/fx/seq/run から毎 tick 呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build wolf_leap_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 進行役（at @s）。スコア fx_t ＝ 出してからの tick 数

execute if score @s fx_t matches 1 run return run function tm_rpg:player/skill/wolf_leap/fx/cast_seq/t1
execute if score @s fx_t matches 2 run return run function tm_rpg:player/skill/wolf_leap/fx/cast_seq/t2
execute if score @s fx_t matches 3 run return run function tm_rpg:player/skill/wolf_leap/fx/cast_seq/t3
execute if score @s fx_t matches 4 run return run function tm_rpg:player/skill/wolf_leap/fx/cast_seq/t4
