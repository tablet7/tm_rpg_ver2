#> tm_rpg:player/skill/fairy/fx/cast

# スキル fairy の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build fairy_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.9 1.6
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.6 1.9
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 0.8 1.4
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 0.4 1.6
execute positioned ^-0.9 ^0.16 ^1.05 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^-0.9 ^0.15 ^0.96 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^-0.79 ^0.02 ^0.97 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
particle minecraft:end_rod ^-0.77 ^0.15 ^1.09 0.3 0.3 0.3 0.02 2
execute positioned ^0.64 ^-0.34 ^2.69 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^0.74 ^-0.41 ^2.7 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^0.58 ^-0.27 ^2.49 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
particle minecraft:end_rod ^0.72 ^-0.38 ^2.55 0.3 0.3 0.3 0.02 2
execute positioned ^-0.75 ^-0.29 ^3.81 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^-0.8 ^-0.23 ^3.8 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^-0.97 ^-0.32 ^3.7 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
particle minecraft:end_rod ^-0.84 ^-0.19 ^3.79 0.3 0.3 0.3 0.02 2
execute positioned ^-0.13 ^-0.2 ^5.45 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^-0.07 ^-0.13 ^5.43 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^-0.14 ^-0.18 ^5.62 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
particle minecraft:end_rod ^-0.16 ^-0.19 ^5.51 0.3 0.3 0.3 0.02 2
execute positioned ^-0.58 ^0.46 ^7.01 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^-0.57 ^0.48 ^6.8 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^-0.42 ^0.56 ^6.96 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
particle minecraft:end_rod ^-0.47 ^0.48 ^6.94 0.3 0.3 0.3 0.02 2
execute positioned ^-0.38 ^0.22 ^8.41 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^-0.31 ^0.33 ^8.42 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^-0.36 ^0.06 ^8.49 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
particle minecraft:end_rod ^-0.41 ^0.2 ^8.43 0.3 0.3 0.3 0.02 2
execute positioned ^1.02 ^0.29 ^9.74 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
execute positioned ^0.94 ^0.31 ^9.59 summon minecraft:item_display run function tm_rpg:player/skill/fairy/line
particle minecraft:end_rod ^1.08 ^0.32 ^9.69 0.3 0.3 0.3 0.02 2
