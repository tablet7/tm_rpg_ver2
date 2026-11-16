#> tm_rpg:player/skill/fly_slash/fx/tick

# スキル fly_slash の演出: 弾・設置物が出ているあいだ、毎 tick その場所で出す演出。player/skill/fx/tick から呼ばれる（弾に tag fx_tick と fx_fly_slash）
# 自動生成（mc-skill-fx の mcfx.py build fly_slash_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 弾（at @s）

particle minecraft:end_rod ~ ~ ~ 0.5 0.4 0.5 0.01 1
particle minecraft:dust{color:[0.36,0.78,0.96],scale:1.0} ~ ~ ~ 0.7 0.5 0.7 0 2
