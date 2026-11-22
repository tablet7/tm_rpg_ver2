#> tm_rpg:player/skill/wolf_wave/fx/hit

# スキル wolf_wave の演出: 弾・設置物が当たった tick に、その場所で1回だけ出す演出。player/skill/fx/hit から呼ばれる（弾に tag fx_hit と fx_wolf_wave）
# 自動生成（mc-skill-fx の mcfx.py build wolf_wave_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き（@s ＝ 弾）

playsound minecraft:block.redstone_torch.burnout hostile @a ~ ~ ~ 0.6 1.6
playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.4 1.6
particle minecraft:electric_spark ~ ~ ~ 0.5 0.5 0.5 0.2 10
