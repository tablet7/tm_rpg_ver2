#> tm_rpg:player/skill/fire_dash/fx/tick

# スキル fire_dash の演出: 弾・設置物が出ているあいだ、毎 tick その場所で出す演出。player/skill/fx/tick から呼ばれる（弾に tag fx_tick と fx_fire_dash）
# 自動生成（mc-skill-fx の mcfx.py build fire_dash_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 弾（at @s）

particle minecraft:flame ~ ~ ~ 0.6 0.6 0.6 0.02 4
particle minecraft:lava ~ ~ ~ 0.4 0.4 0.4 0 1
