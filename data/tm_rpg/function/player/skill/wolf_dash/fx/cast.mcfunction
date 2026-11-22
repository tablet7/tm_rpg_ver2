#> tm_rpg:player/skill/wolf_dash/fx/cast

# スキル wolf_dash の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build wolf_dash_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 2 0.6
playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.5 0.8

# 2 tick 後までの演出は、進行役（marker）が出す（player/skill/fx/seq）
scoreboard players set #fx_len temp 2
execute summon minecraft:marker run function tm_rpg:player/skill/wolf_dash/fx/cast_seq_init
