#> tm_rpg:player/skill/fly_slash/fx/hit

# スキル fly_slash の演出: 弾・設置物が当たった tick に、その場所で1回だけ出す演出。player/skill/fx/hit から呼ばれる（弾に tag fx_hit と fx_fly_slash）
# 自動生成（mc-skill-fx の mcfx.py build fly_slash_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き（@s ＝ 弾）

playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 1
playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 0.8 0.8
particle minecraft:crit ~ ~ ~ 0.4 0.4 0.4 0.4 12
particle minecraft:enchanted_hit ~ ~ ~ 0.4 0.4 0.4 0.2 6
