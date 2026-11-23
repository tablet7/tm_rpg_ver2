#> tm_rpg:player/skill/wolf_tail/fx/cast

# スキル wolf_tail の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build wolf_tail_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.5
playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~ 1.5 0.8
particle minecraft:sweep_attack ^ ^1 ^-8 0 0 0 0 1 force
particle minecraft:sweep_attack ^3.13 ^1 ^-7.36 0 0 0 0 1 force
particle minecraft:cloud ~6 ~0.3 ~ 1 0 0 0.05 0 force
particle minecraft:cloud ~5.88 ~0.3 ~1.17 0.98 0 0.2 0.05 0 force
particle minecraft:cloud ~5.54 ~0.3 ~2.3 0.92 0 0.38 0.05 0 force
particle minecraft:cloud ~4.99 ~0.3 ~3.33 0.83 0 0.56 0.05 0 force
particle minecraft:cloud ~4.24 ~0.3 ~4.24 0.71 0 0.71 0.05 0 force
particle minecraft:cloud ~3.33 ~0.3 ~4.99 0.56 0 0.83 0.05 0 force
particle minecraft:cloud ~2.3 ~0.3 ~5.54 0.38 0 0.92 0.05 0 force
particle minecraft:cloud ~1.17 ~0.3 ~5.88 0.2 0 0.98 0.05 0 force
particle minecraft:cloud ~ ~0.3 ~6 0 0 1 0.05 0 force
particle minecraft:cloud ~-1.17 ~0.3 ~5.88 -0.2 0 0.98 0.05 0 force
particle minecraft:cloud ~-2.3 ~0.3 ~5.54 -0.38 0 0.92 0.05 0 force
particle minecraft:cloud ~-3.33 ~0.3 ~4.99 -0.56 0 0.83 0.05 0 force
particle minecraft:cloud ~-4.24 ~0.3 ~4.24 -0.71 0 0.71 0.05 0 force
particle minecraft:cloud ~-4.99 ~0.3 ~3.33 -0.83 0 0.56 0.05 0 force
particle minecraft:cloud ~-5.54 ~0.3 ~2.3 -0.92 0 0.38 0.05 0 force
particle minecraft:cloud ~-5.88 ~0.3 ~1.17 -0.98 0 0.2 0.05 0 force
particle minecraft:cloud ~-6 ~0.3 ~ -1 0 0 0.05 0 force
particle minecraft:cloud ~-5.88 ~0.3 ~-1.17 -0.98 0 -0.2 0.05 0 force
particle minecraft:cloud ~-5.54 ~0.3 ~-2.3 -0.92 0 -0.38 0.05 0 force
particle minecraft:cloud ~-4.99 ~0.3 ~-3.33 -0.83 0 -0.56 0.05 0 force
particle minecraft:cloud ~-4.24 ~0.3 ~-4.24 -0.71 0 -0.71 0.05 0 force
particle minecraft:cloud ~-3.33 ~0.3 ~-4.99 -0.56 0 -0.83 0.05 0 force
particle minecraft:cloud ~-2.3 ~0.3 ~-5.54 -0.38 0 -0.92 0.05 0 force
particle minecraft:cloud ~-1.17 ~0.3 ~-5.88 -0.2 0 -0.98 0.05 0 force
particle minecraft:cloud ~ ~0.3 ~-6 0 0 -1 0.05 0 force
particle minecraft:cloud ~1.17 ~0.3 ~-5.88 0.2 0 -0.98 0.05 0 force
particle minecraft:cloud ~2.3 ~0.3 ~-5.54 0.38 0 -0.92 0.05 0 force
particle minecraft:cloud ~3.33 ~0.3 ~-4.99 0.56 0 -0.83 0.05 0 force
particle minecraft:cloud ~4.24 ~0.3 ~-4.24 0.71 0 -0.71 0.05 0 force
particle minecraft:cloud ~4.99 ~0.3 ~-3.33 0.83 0 -0.56 0.05 0 force
particle minecraft:cloud ~5.54 ~0.3 ~-2.3 0.92 0 -0.38 0.05 0 force
particle minecraft:cloud ~5.88 ~0.3 ~-1.17 0.98 0 -0.2 0.05 0 force

# 11 tick 後までの演出は、進行役（marker）が出す（player/skill/fx/seq）
scoreboard players set #fx_len temp 11
execute summon minecraft:marker run function tm_rpg:player/skill/wolf_tail/fx/cast_seq_init
