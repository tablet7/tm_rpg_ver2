#> tm_rpg:player/skill/light_cross/cross/fx/spawn

# スキル light_cross/cross の演出: 弾・設置物（管理役が出す子も）が出たとき、その場所で1回だけ出す演出。弾の設定の関数の最後で execute at @s run function ... と呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build light_cross_cross_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き（@s ＝ 弾）

playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 0.8 1.5
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.4 2
particle minecraft:end_rod ~0.8 ~ ~ 0 0 0 0 1
particle minecraft:end_rod ~0.65 ~ ~0.47 0 0 0 0 1
particle minecraft:end_rod ~0.25 ~ ~0.76 0 0 0 0 1
particle minecraft:end_rod ~-0.25 ~ ~0.76 0 0 0 0 1
particle minecraft:end_rod ~-0.65 ~ ~0.47 0 0 0 0 1
particle minecraft:end_rod ~-0.8 ~ ~ 0 0 0 0 1
particle minecraft:end_rod ~-0.65 ~ ~-0.47 0 0 0 0 1
particle minecraft:end_rod ~-0.25 ~ ~-0.76 0 0 0 0 1
particle minecraft:end_rod ~0.25 ~ ~-0.76 0 0 0 0 1
particle minecraft:end_rod ~0.65 ~ ~-0.47 0 0 0 0 1
