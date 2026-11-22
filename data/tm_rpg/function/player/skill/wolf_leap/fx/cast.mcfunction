#> tm_rpg:player/skill/wolf_leap/fx/cast

# スキル wolf_leap の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build wolf_leap_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.6
playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.5
playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 2 0.5
particle minecraft:explosion ~ ~0.5 ~ 2 0.3 2 0 5
particle minecraft:block{block_state:"minecraft:stone"} ~ ~0.3 ~ 3 0.2 3 0.25 40
particle minecraft:cloud ~2 ~0.2 ~ 1 0 0 0.08 0 force
particle minecraft:cloud ~1.96 ~0.2 ~0.39 0.98 0 0.2 0.08 0 force
particle minecraft:cloud ~1.85 ~0.2 ~0.77 0.92 0 0.38 0.08 0 force
particle minecraft:cloud ~1.66 ~0.2 ~1.11 0.83 0 0.56 0.08 0 force
particle minecraft:cloud ~1.41 ~0.2 ~1.41 0.71 0 0.71 0.08 0 force
particle minecraft:cloud ~1.11 ~0.2 ~1.66 0.56 0 0.83 0.08 0 force
particle minecraft:cloud ~0.77 ~0.2 ~1.85 0.38 0 0.92 0.08 0 force
particle minecraft:cloud ~0.39 ~0.2 ~1.96 0.2 0 0.98 0.08 0 force
particle minecraft:cloud ~ ~0.2 ~2 0 0 1 0.08 0 force
particle minecraft:cloud ~-0.39 ~0.2 ~1.96 -0.2 0 0.98 0.08 0 force
particle minecraft:cloud ~-0.77 ~0.2 ~1.85 -0.38 0 0.92 0.08 0 force
particle minecraft:cloud ~-1.11 ~0.2 ~1.66 -0.56 0 0.83 0.08 0 force
particle minecraft:cloud ~-1.41 ~0.2 ~1.41 -0.71 0 0.71 0.08 0 force
particle minecraft:cloud ~-1.66 ~0.2 ~1.11 -0.83 0 0.56 0.08 0 force
particle minecraft:cloud ~-1.85 ~0.2 ~0.77 -0.92 0 0.38 0.08 0 force
particle minecraft:cloud ~-1.96 ~0.2 ~0.39 -0.98 0 0.2 0.08 0 force
particle minecraft:cloud ~-2 ~0.2 ~ -1 0 0 0.08 0 force
particle minecraft:cloud ~-1.96 ~0.2 ~-0.39 -0.98 0 -0.2 0.08 0 force
particle minecraft:cloud ~-1.85 ~0.2 ~-0.77 -0.92 0 -0.38 0.08 0 force
particle minecraft:cloud ~-1.66 ~0.2 ~-1.11 -0.83 0 -0.56 0.08 0 force
particle minecraft:cloud ~-1.41 ~0.2 ~-1.41 -0.71 0 -0.71 0.08 0 force
particle minecraft:cloud ~-1.11 ~0.2 ~-1.66 -0.56 0 -0.83 0.08 0 force
particle minecraft:cloud ~-0.77 ~0.2 ~-1.85 -0.38 0 -0.92 0.08 0 force
particle minecraft:cloud ~-0.39 ~0.2 ~-1.96 -0.2 0 -0.98 0.08 0 force
particle minecraft:cloud ~ ~0.2 ~-2 0 0 -1 0.08 0 force
particle minecraft:cloud ~0.39 ~0.2 ~-1.96 0.2 0 -0.98 0.08 0 force
particle minecraft:cloud ~0.77 ~0.2 ~-1.85 0.38 0 -0.92 0.08 0 force
particle minecraft:cloud ~1.11 ~0.2 ~-1.66 0.56 0 -0.83 0.08 0 force
particle minecraft:cloud ~1.41 ~0.2 ~-1.41 0.71 0 -0.71 0.08 0 force
particle minecraft:cloud ~1.66 ~0.2 ~-1.11 0.83 0 -0.56 0.08 0 force
particle minecraft:cloud ~1.85 ~0.2 ~-0.77 0.92 0 -0.38 0.08 0 force
particle minecraft:cloud ~1.96 ~0.2 ~-0.39 0.98 0 -0.2 0.08 0 force

# 4 tick 後までの演出は、進行役（marker）が出す（player/skill/fx/seq）
scoreboard players set #fx_len temp 4
execute summon minecraft:marker run function tm_rpg:player/skill/wolf_leap/fx/cast_seq_init
