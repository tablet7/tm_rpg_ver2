#> tm_rpg:player/skill/light_cross/cross/fx/hit

# スキル light_cross/cross の演出: 弾・設置物が当たった tick に、その場所で1回だけ出す演出。player/skill/fx/hit から呼ばれる（弾に tag fx_hit と fx_light_cross_cross）
# 自動生成（mc-skill-fx の mcfx.py build light_cross_cross_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き（@s ＝ 弾）

playsound minecraft:block.bell.use player @a ~ ~ ~ 0.6 1.8
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.8 1.2
particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0.12 12
particle minecraft:wax_off ~ ~ ~ 0.6 0.6 0.6 0 10
