#> tm_rpg:player/skill/fire_dash/fx/spawn

# スキル fire_dash の演出: 弾・設置物（管理役が出す子も）が出たとき、その場所で1回だけ出す演出。弾の設定の関数の最後で execute at @s run function ... と呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build fire_dash_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き（@s ＝ 弾）

playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.8
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.8 1
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.5 1.6
particle minecraft:flame ^ ^ ^-0.5 0.3 0.3 0.3 0.15 15
particle minecraft:large_smoke ^ ^-0.5 ^-0.5 0.3 0.2 0.3 0.03 6
