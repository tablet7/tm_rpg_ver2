#> tm_rpg:player/skill/wolf_thunder/fx/cast

# スキル wolf_thunder の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build wolf_thunder_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.6 1.4
playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 1
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^ ^14 ^ 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^0.12 ^13.25 ^0.07 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^0.23 ^12.5 ^0.13 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^0.35 ^11.75 ^0.2 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^0.47 ^11 ^0.27 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^0.58 ^10.25 ^0.33 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^0.7 ^9.5 ^0.4 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^0.7 ^9.5 ^0.4 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^0.51 ^8.79 ^0.3 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^0.33 ^8.07 ^0.2 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^0.14 ^7.36 ^0.1 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^-0.04 ^6.64 ^ 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^-0.23 ^5.93 ^-0.1 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^-0.41 ^5.21 ^-0.2 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^-0.6 ^4.5 ^-0.3 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^-0.6 ^4.5 ^-0.3 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^-0.5 ^3.75 ^-0.25 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^-0.4 ^3 ^-0.2 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^-0.3 ^2.25 ^-0.15 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^-0.2 ^1.5 ^-0.1 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^-0.1 ^0.75 ^-0.05 0 0 0 0 1 force
particle minecraft:dust{color:[1.0,0.85,0.15],scale:1.6} ^ ^ ^ 0 0 0 0 1 force
particle minecraft:flash{color:[1.0,0.9,0.4,1.0]} ~ ~0.5 ~ 0 0 0 0 1
particle minecraft:dust{color:[1.0,0.85,0.15],scale:2.5} ~ ~0.5 ~ 0.8 0.5 0.8 0 20
particle minecraft:electric_spark ~0.2 ~0.96 ~ 0.4 0.92 0 0.4 0 force
particle minecraft:electric_spark ~-0.24 ~0.88 ~0.22 -0.49 0.75 0.45 0.4 0 force
particle minecraft:electric_spark ~0.04 ~0.79 ~-0.4 0.07 0.58 -0.81 0.4 0 force
particle minecraft:electric_spark ~0.28 ~0.71 ~0.36 0.55 0.42 0.72 0.4 0 force
particle minecraft:electric_spark ~-0.48 ~0.62 ~-0.08 -0.95 0.25 -0.17 0.4 0 force
particle minecraft:electric_spark ~0.42 ~0.54 ~-0.27 0.84 0.08 -0.53 0.4 0 force
particle minecraft:electric_spark ~-0.13 ~0.46 ~0.48 -0.26 -0.08 0.96 0.4 0 force
particle minecraft:electric_spark ~-0.22 ~0.38 ~-0.43 -0.45 -0.25 -0.86 0.4 0 force
particle minecraft:electric_spark ~0.43 ~0.29 ~0.16 0.85 -0.42 0.31 0.4 0 force
particle minecraft:electric_spark ~-0.38 ~0.21 ~0.15 -0.75 -0.58 0.31 0.4 0 force
particle minecraft:electric_spark ~0.14 ~0.12 ~-0.3 0.28 -0.75 -0.6 0.4 0 force
particle minecraft:electric_spark ~0.06 ~0.04 ~0.19 0.12 -0.92 0.38 0.4 0 force

# 1 tick 後までの演出は、進行役（marker）が出す（player/skill/fx/seq）
scoreboard players set #fx_len temp 1
execute summon minecraft:marker run function tm_rpg:player/skill/wolf_thunder/fx/cast_seq_init
