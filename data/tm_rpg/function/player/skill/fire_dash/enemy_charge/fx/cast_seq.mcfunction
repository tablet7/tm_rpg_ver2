#> tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast_seq

# スキル fire_dash/enemy_charge の演出（cast）の、時間差の部分。player/skill/fx/seq/run から毎 tick 呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build fire_dash_enemy_charge_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 進行役（at @s）。スコア fx_t ＝ 出してからの tick 数

execute if score @s fx_t matches 1 run particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3
execute if score @s fx_t matches 2 run return run function tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast_seq/t2
execute if score @s fx_t matches 3 run particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3
execute if score @s fx_t matches 4 run return run function tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast_seq/t4
execute if score @s fx_t matches 5 run particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3
execute if score @s fx_t matches 6 run return run function tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast_seq/t6
execute if score @s fx_t matches 7 run particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3
execute if score @s fx_t matches 8 run return run function tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast_seq/t8
execute if score @s fx_t matches 9 run particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3
execute if score @s fx_t matches 10 run return run function tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast_seq/t10
execute if score @s fx_t matches 11 run particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3
execute if score @s fx_t matches 12 run return run function tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast_seq/t12
execute if score @s fx_t matches 13 run particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3
execute if score @s fx_t matches 14 run return run function tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast_seq/t14
execute if score @s fx_t matches 15 run particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3
execute if score @s fx_t matches 16 run return run function tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast_seq/t16
execute if score @s fx_t matches 17 run particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3
execute if score @s fx_t matches 18 run return run function tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast_seq/t18
execute if score @s fx_t matches 19 run particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3
