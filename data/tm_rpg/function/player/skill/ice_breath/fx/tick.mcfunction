#> tm_rpg:player/skill/ice_breath/fx/tick

# スキル ice_breath の演出: 弾・設置物が出ているあいだ、毎 tick その場所で出す演出。player/skill/fx/tick から呼ばれる（弾に tag fx_tick と fx_ice_breath）
# 自動生成（mc-skill-fx の mcfx.py build ice_breath_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 弾（at @s）

particle minecraft:snowflake ^ ^ ^1 0.5 0.4 0.5 0.03 3
particle minecraft:dust{color:[0.6,0.9,1.0],scale:1.2} ^ ^ ^2.5 0.9 0.6 0.9 0 3
particle minecraft:cloud ^ ^ ^3.5 1 0.6 1 0.02 2
particle minecraft:snowflake ^ ^ ^3.5 1.1 0.7 1.1 0.02 2
