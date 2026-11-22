#> tm_rpg:player/skill/wolf_dash/skill3

# ボス「ガーディアンウルフ」の突進の当たり判定の毎 tick の処理。system/delete_entity_direction/damage_main から、tag wolf_dash_hit で呼ばれる
# 使った敵（ent_id が summon_ent_id と同じ ＝ ボスの本体の当たり判定 core）の場所から、突進の向き（この当たり判定の向き）に前へずらした所へ動いてから当たる
#   core の足元はボスの中心から 上 0.4・前 0.6 マス。そこから 上 1.1・前 1.4（近い方）／3.9（遠い方）で、ボスの中心から 上 1.5・前 2／4.5 マス
# ボスがいなくなった・10 マスより離れたときは、その場で当たる
# 戻り値: main_projectile/hit の結果（貫通なので 0）
# @s ＝ 当たり判定（at @s）

scoreboard players operation #wolf_dash_owner temp = @s summon_ent_id
tag @s add wolf_dash_now
execute if entity @s[tag=!wolf_dash_far] as @e[type=#tm_rpg:mob_type,tag=mob,distance=..10] if score @s ent_id = #wolf_dash_owner temp at @s rotated as @e[type=minecraft:marker,tag=wolf_dash_now,distance=..11,limit=1] positioned ^ ^1.1 ^1.4 run teleport @e[type=minecraft:marker,tag=wolf_dash_now,distance=..13,limit=1] ~ ~ ~
execute if entity @s[tag=wolf_dash_far] as @e[type=#tm_rpg:mob_type,tag=mob,distance=..10] if score @s ent_id = #wolf_dash_owner temp at @s rotated as @e[type=minecraft:marker,tag=wolf_dash_now,distance=..11,limit=1] positioned ^ ^1.1 ^3.9 run teleport @e[type=minecraft:marker,tag=wolf_dash_now,distance=..15,limit=1] ~ ~ ~
tag @s remove wolf_dash_now

execute at @s run return run function tm_rpg:player/skill/main_projectile/hit
