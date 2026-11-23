#> tm_rpg:player/skill/wolf_dash/fx/tick

# スキル wolf_dash の演出: 弾・設置物が出ているあいだ、毎 tick その場所で出す演出。player/skill/fx/tick から呼ばれる（弾に tag fx_tick と fx_wolf_dash）
# 自動生成（mc-skill-fx の mcfx.py build wolf_dash_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 弾（at @s）

particle minecraft:cloud ~ ~-1.3 ~ 1 0.1 1 0.02 3
particle minecraft:poof ~ ~-1.3 ~ 0.8 0.1 0.8 0.02 2
