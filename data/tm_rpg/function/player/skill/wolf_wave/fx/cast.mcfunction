#> tm_rpg:player/skill/wolf_wave/fx/cast

# スキル wolf_wave の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build wolf_wave_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~ 1.5 0.8
playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.6 1.2

# 1 tick 後までの演出は、進行役（marker）が出す（player/skill/fx/seq）
scoreboard players set #fx_len temp 1
execute summon minecraft:marker run function tm_rpg:player/skill/wolf_wave/fx/cast_seq_init
