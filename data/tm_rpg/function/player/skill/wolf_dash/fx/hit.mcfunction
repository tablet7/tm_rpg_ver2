#> tm_rpg:player/skill/wolf_dash/fx/hit

# スキル wolf_dash の演出: 弾・設置物が当たった tick に、その場所で1回だけ出す演出。player/skill/fx/hit から呼ばれる（弾に tag fx_hit と fx_wolf_dash）
# 自動生成（mc-skill-fx の mcfx.py build wolf_dash_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き（@s ＝ 弾）

playsound minecraft:entity.player.attack.strong hostile @a ~ ~ ~ 1.5 0.7
playsound minecraft:entity.player.attack.crit hostile @a ~ ~ ~ 1 0.9
particle minecraft:crit ~ ~ ~ 0.5 0.5 0.5 0.3 15
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
