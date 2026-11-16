#> tm_rpg:player/skill/ice_breath/fx/cast

# スキル ice_breath の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build ice_breath_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 0.8 1.6
playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 0.8
particle minecraft:snowflake ^ ^1.5 ^1 0.3 0.3 0.3 0.1 10

# 50 tick 後までの演出は、進行役（marker）が出す（player/skill/fx/seq）
scoreboard players set #fx_len temp 50
execute summon minecraft:marker run function tm_rpg:player/skill/ice_breath/fx/cast_seq_init
