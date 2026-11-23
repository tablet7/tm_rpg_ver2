#> tm_rpg:player/skill/wolf_slam/fx/cast

# スキル wolf_slam の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build wolf_slam_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 2 0.6
playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.5
particle minecraft:explosion ~ ~0.5 ~ 1 0.2 1 0 3
particle minecraft:block{block_state:"minecraft:stone"} ~ ~0.3 ~ 2 0.2 2 0.2 30
particle minecraft:cloud ~1 ~0.2 ~ 1 0 0 0.08 0 force
particle minecraft:cloud ~0.92 ~0.2 ~0.38 0.92 0 0.38 0.08 0 force
particle minecraft:cloud ~0.71 ~0.2 ~0.71 0.71 0 0.71 0.08 0 force
particle minecraft:cloud ~0.38 ~0.2 ~0.92 0.38 0 0.92 0.08 0 force
particle minecraft:cloud ~ ~0.2 ~1 0 0 1 0.08 0 force
particle minecraft:cloud ~-0.38 ~0.2 ~0.92 -0.38 0 0.92 0.08 0 force
particle minecraft:cloud ~-0.71 ~0.2 ~0.71 -0.71 0 0.71 0.08 0 force
particle minecraft:cloud ~-0.92 ~0.2 ~0.38 -0.92 0 0.38 0.08 0 force
particle minecraft:cloud ~-1 ~0.2 ~ -1 0 0 0.08 0 force
particle minecraft:cloud ~-0.92 ~0.2 ~-0.38 -0.92 0 -0.38 0.08 0 force
particle minecraft:cloud ~-0.71 ~0.2 ~-0.71 -0.71 0 -0.71 0.08 0 force
particle minecraft:cloud ~-0.38 ~0.2 ~-0.92 -0.38 0 -0.92 0.08 0 force
particle minecraft:cloud ~ ~0.2 ~-1 0 0 -1 0.08 0 force
particle minecraft:cloud ~0.38 ~0.2 ~-0.92 0.38 0 -0.92 0.08 0 force
particle minecraft:cloud ~0.71 ~0.2 ~-0.71 0.71 0 -0.71 0.08 0 force
particle minecraft:cloud ~0.92 ~0.2 ~-0.38 0.92 0 -0.38 0.08 0 force

# 3 tick 後までの演出は、進行役（marker）が出す（player/skill/fx/seq）
scoreboard players set #fx_len temp 3
execute summon minecraft:marker run function tm_rpg:player/skill/wolf_slam/fx/cast_seq_init
