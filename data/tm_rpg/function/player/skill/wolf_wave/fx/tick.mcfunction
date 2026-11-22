#> tm_rpg:player/skill/wolf_wave/fx/tick

# スキル wolf_wave の演出: 弾・設置物が出ているあいだ、毎 tick その場所で出す演出。player/skill/fx/tick から呼ばれる（弾に tag fx_tick と fx_wolf_wave）
# 自動生成（mc-skill-fx の mcfx.py build wolf_wave_fx.json）。手で直さず、設計図を直して作り直す
# @s ＝ 弾（at @s）

particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.5} ~ ~-0.6 ~ 1.2 0.2 0.3 0 4
particle minecraft:electric_spark ~ ~-0.5 ~ 1 0.3 0.3 0.05 1
