#> tm_rpg:player/skill/light_cross/cross/fx/tick

# スキル light_cross/cross の演出: 弾・設置物が出ているあいだ、毎 tick その場所で出す演出。player/skill/fx/tick から呼ばれる（弾に tag fx_tick と fx_light_cross_cross）
# 自動生成（mc-skill-fx の mcfx.py build light_cross_cross_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 弾（at @s）

particle minecraft:end_rod ~ ~ ~ 0.15 0.15 0.15 0 2
