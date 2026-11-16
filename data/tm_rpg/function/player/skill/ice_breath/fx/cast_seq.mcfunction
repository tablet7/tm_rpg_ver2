#> tm_rpg:player/skill/ice_breath/fx/cast_seq

# スキル ice_breath の演出（cast）の、時間差の部分。player/skill/fx/seq/run から毎 tick 呼ばれる
# 自動生成（mc-skill-fx の mcfx.py build ice_breath_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 進行役（at @s）。スコア fx_t ＝ 出してからの tick 数

execute if score @s fx_t matches 1 run playsound minecraft:block.glass.break player @a ~ ~ ~ 0.5 1.5
execute if score @s fx_t matches 2 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 0.6 1.6
execute if score @s fx_t matches 10 run playsound minecraft:block.powder_snow.break player @a ~ ~ ~ 0.8 0.7
execute if score @s fx_t matches 10 run playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 0.4 1.8
execute if score @s fx_t matches 20 run playsound minecraft:block.powder_snow.break player @a ~ ~ ~ 0.8 0.7
execute if score @s fx_t matches 20 run playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 0.4 1.8
execute if score @s fx_t matches 30 run playsound minecraft:block.powder_snow.break player @a ~ ~ ~ 0.8 0.7
execute if score @s fx_t matches 30 run playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 0.4 1.8
execute if score @s fx_t matches 40 run playsound minecraft:block.powder_snow.break player @a ~ ~ ~ 0.8 0.7
execute if score @s fx_t matches 40 run playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 0.4 1.8
execute if score @s fx_t matches 50 run playsound minecraft:block.powder_snow.break player @a ~ ~ ~ 0.8 0.7
execute if score @s fx_t matches 50 run playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 0.4 1.8
