#> tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast

# スキル fire_dash/enemy_charge の演出: スキルを使った場所・向きで1回だけ出す演出。<スキル>/fire から呼ぶ
# 自動生成（mc-skill-fx の mcfx.py build fire_dash_enemy_charge_fx.json）。手で直さず、設計図を直して作り直す
# 実行位置・向き ＝ 演出を出す場所・向き

playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1 0.8
playsound minecraft:entity.blaze.burn player @a ~ ~ ~ 0.7 0.8
particle minecraft:flame ~2 ~0.1 ~ 0 0 0 0 1
particle minecraft:flame ~1.73 ~0.1 ~1 0 0 0 0 1
particle minecraft:flame ~1 ~0.1 ~1.73 0 0 0 0 1
particle minecraft:flame ~ ~0.1 ~2 0 0 0 0 1
particle minecraft:flame ~-1 ~0.1 ~1.73 0 0 0 0 1
particle minecraft:flame ~-1.73 ~0.1 ~1 0 0 0 0 1
particle minecraft:flame ~-2 ~0.1 ~ 0 0 0 0 1
particle minecraft:flame ~-1.73 ~0.1 ~-1 0 0 0 0 1
particle minecraft:flame ~-1 ~0.1 ~-1.73 0 0 0 0 1
particle minecraft:flame ~ ~0.1 ~-2 0 0 0 0 1
particle minecraft:flame ~1 ~0.1 ~-1.73 0 0 0 0 1
particle minecraft:flame ~1.73 ~0.1 ~-1 0 0 0 0 1
particle minecraft:flame ~ ~1 ~ 0.5 0.7 0.5 0.02 3

# 19 tick 後までの演出は、進行役（marker）が出す（player/skill/fx/seq）
scoreboard players set #fx_len temp 19
execute summon minecraft:marker run function tm_rpg:player/skill/fire_dash/enemy_charge/fx/cast_seq_init
