#> tm_rpg:player/skill/wolf_swipe/fx/cast

# スキル wolf_swipe の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build wolf_swipe_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.6
playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.5 0.8
particle minecraft:sweep_attack ^5.14 ^1 ^8.13 0 0 0 0 1 force
particle minecraft:sweep_attack ^3.25 ^1 ^9.31 0 0 0 0 1 force
particle minecraft:cloud ^ ^0.3 ^1 2.5 0.1 0.4 0.02 2
particle minecraft:cloud ^ ^0.3 ^2.28 2.5 0.1 0.4 0.02 2
particle minecraft:cloud ^ ^0.3 ^3.56 2.5 0.1 0.4 0.02 2
particle minecraft:cloud ^ ^0.3 ^4.83 2.5 0.1 0.4 0.02 2
particle minecraft:cloud ^ ^0.3 ^6.11 2.5 0.1 0.4 0.02 2
particle minecraft:cloud ^ ^0.3 ^7.39 2.5 0.1 0.4 0.02 2
particle minecraft:cloud ^ ^0.3 ^8.67 2.5 0.1 0.4 0.02 2
particle minecraft:cloud ^ ^0.3 ^9.94 2.5 0.1 0.4 0.02 2
particle minecraft:cloud ^ ^0.3 ^11.22 2.5 0.1 0.4 0.02 2
particle minecraft:cloud ^ ^0.3 ^12.5 2.5 0.1 0.4 0.02 2

# 2 tick 後までの演出は、進行役（marker）が出す（player/skill/fx/seq）
scoreboard players set #fx_len temp 2
execute summon minecraft:marker run function tm_rpg:player/skill/wolf_swipe/fx/cast_seq_init
