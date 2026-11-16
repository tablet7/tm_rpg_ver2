#> tm_rpg:player/skill/fire_dash/fx/hit

# スキル fire_dash の演出: 弾・設置物が当たった tick に、その場所で1回だけ出す演出。player/skill/fx/hit から呼ばれる（弾に tag fx_hit と fx_fire_dash）
# 自動生成（mc-skill-fx の mcfx.py build fire_dash_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き（@s ＝ 弾）

playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 1 0.9
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.6 1.4
particle minecraft:flame ~ ~ ~ 0.4 0.4 0.4 0.1 12
particle minecraft:lava ~ ~ ~ 0.4 0.4 0.4 0 4
