#> tm_rpg:player/skill/wolf_roar/fx/cast

# スキル wolf_roar の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build wolf_roar_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 3 0.6
playsound minecraft:entity.wolf_big.growl hostile @a ~ ~ ~ 3 0.5
particle minecraft:sonic_boom ^ ^4 ^5 0 0 0 0 1
particle minecraft:cloud ~2 ~0.3 ~ 1 0 0 0.1 0 force
particle minecraft:cloud ~1.97 ~0.3 ~0.35 0.98 0 0.17 0.1 0 force
particle minecraft:cloud ~1.88 ~0.3 ~0.68 0.94 0 0.34 0.1 0 force
particle minecraft:cloud ~1.73 ~0.3 ~1 0.87 0 0.5 0.1 0 force
particle minecraft:cloud ~1.53 ~0.3 ~1.29 0.77 0 0.64 0.1 0 force
particle minecraft:cloud ~1.29 ~0.3 ~1.53 0.64 0 0.77 0.1 0 force
particle minecraft:cloud ~1 ~0.3 ~1.73 0.5 0 0.87 0.1 0 force
particle minecraft:cloud ~0.68 ~0.3 ~1.88 0.34 0 0.94 0.1 0 force
particle minecraft:cloud ~0.35 ~0.3 ~1.97 0.17 0 0.98 0.1 0 force
particle minecraft:cloud ~ ~0.3 ~2 0 0 1 0.1 0 force
particle minecraft:cloud ~-0.35 ~0.3 ~1.97 -0.17 0 0.98 0.1 0 force
particle minecraft:cloud ~-0.68 ~0.3 ~1.88 -0.34 0 0.94 0.1 0 force
particle minecraft:cloud ~-1 ~0.3 ~1.73 -0.5 0 0.87 0.1 0 force
particle minecraft:cloud ~-1.29 ~0.3 ~1.53 -0.64 0 0.77 0.1 0 force
particle minecraft:cloud ~-1.53 ~0.3 ~1.29 -0.77 0 0.64 0.1 0 force
particle minecraft:cloud ~-1.73 ~0.3 ~1 -0.87 0 0.5 0.1 0 force
particle minecraft:cloud ~-1.88 ~0.3 ~0.68 -0.94 0 0.34 0.1 0 force
particle minecraft:cloud ~-1.97 ~0.3 ~0.35 -0.98 0 0.17 0.1 0 force
particle minecraft:cloud ~-2 ~0.3 ~ -1 0 0 0.1 0 force
particle minecraft:cloud ~-1.97 ~0.3 ~-0.35 -0.98 0 -0.17 0.1 0 force
particle minecraft:cloud ~-1.88 ~0.3 ~-0.68 -0.94 0 -0.34 0.1 0 force
particle minecraft:cloud ~-1.73 ~0.3 ~-1 -0.87 0 -0.5 0.1 0 force
particle minecraft:cloud ~-1.53 ~0.3 ~-1.29 -0.77 0 -0.64 0.1 0 force
particle minecraft:cloud ~-1.29 ~0.3 ~-1.53 -0.64 0 -0.77 0.1 0 force
particle minecraft:cloud ~-1 ~0.3 ~-1.73 -0.5 0 -0.87 0.1 0 force
particle minecraft:cloud ~-0.68 ~0.3 ~-1.88 -0.34 0 -0.94 0.1 0 force
particle minecraft:cloud ~-0.35 ~0.3 ~-1.97 -0.17 0 -0.98 0.1 0 force
particle minecraft:cloud ~ ~0.3 ~-2 0 0 -1 0.1 0 force
particle minecraft:cloud ~0.35 ~0.3 ~-1.97 0.17 0 -0.98 0.1 0 force
particle minecraft:cloud ~0.68 ~0.3 ~-1.88 0.34 0 -0.94 0.1 0 force
particle minecraft:cloud ~1 ~0.3 ~-1.73 0.5 0 -0.87 0.1 0 force
particle minecraft:cloud ~1.29 ~0.3 ~-1.53 0.64 0 -0.77 0.1 0 force
particle minecraft:cloud ~1.53 ~0.3 ~-1.29 0.77 0 -0.64 0.1 0 force
particle minecraft:cloud ~1.73 ~0.3 ~-1 0.87 0 -0.5 0.1 0 force
particle minecraft:cloud ~1.88 ~0.3 ~-0.68 0.94 0 -0.34 0.1 0 force
particle minecraft:cloud ~1.97 ~0.3 ~-0.35 0.98 0 -0.17 0.1 0 force

# 4 tick 後までの演出は、進行役（marker）が出す（player/skill/fx/seq）
scoreboard players set #fx_len temp 4
execute summon minecraft:marker run function tm_rpg:player/skill/wolf_roar/fx/cast_seq_init
