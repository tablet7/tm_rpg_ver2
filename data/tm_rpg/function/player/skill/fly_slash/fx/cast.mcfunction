#> tm_rpg:player/skill/fly_slash/fx/cast

# スキル fly_slash の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build fly_slash_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.8
playsound minecraft:item.trident.throw player @a ~ ~ ~ 0.7 1.4
particle minecraft:sweep_attack ^-1.33 ^2.61 ^1 0 0 0 0 1 force
particle minecraft:sweep_attack ^-0.77 ^2.14 ^1.73 0 0 0 0 1 force

# 2 tick 後までの演出は、進行役（marker）が出す（player/skill/fx/seq）
scoreboard players set #fx_len temp 2
execute summon minecraft:marker run function tm_rpg:player/skill/fly_slash/fx/cast_seq_init
