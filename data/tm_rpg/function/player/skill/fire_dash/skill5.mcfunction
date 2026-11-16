#> tm_rpg:player/skill/fire_dash/skill5

# スキル「炎の突進」の当たり判定の毎 tick の処理。system/delete_entity_direction/damage_main から、tag fire_dash_hit で呼ばれる
# 使った人（ent_id が summon_ent_id と同じ）の体の真ん中へ動いてから、共通の当たり判定を動かす
# 使った人がいなくなった・8 マスより離れたときは、その場で当たる
# 戻り値: main_projectile/hit の結果（貫通なので 0）
# @s ＝ 当たり判定（at @s）

scoreboard players operation #fire_dash_owner temp = @s summon_ent_id
tag @s add fire_dash_now
execute as @e[type=#tm_rpg:mob_type,tag=mob,distance=..8] if score @s ent_id = #fire_dash_owner temp at @s run teleport @e[type=minecraft:marker,tag=fire_dash_now,distance=..9,limit=1] ~ ~1 ~
tag @s remove fire_dash_now

execute at @s run return run function tm_rpg:player/skill/main_projectile/hit
