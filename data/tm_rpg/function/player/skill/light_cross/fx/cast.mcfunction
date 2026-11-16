#> tm_rpg:player/skill/light_cross/fx/cast

# スキル light_cross の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build light_cross_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.8 1.6
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.2
particle minecraft:end_rod ^ ^1.5 ^0.8 0.2 0.2 0.2 0.05 8
