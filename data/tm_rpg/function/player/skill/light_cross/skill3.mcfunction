#> tm_rpg:player/skill/light_cross/skill3

# スキル「光の十字架」の管理役が、十字架を1本落とす関数。main_projectile/spawner/spawn から、tag light_cross で呼ばれる
# 狙う相手（ent_id が spawn_target_id）がいれば、管理役をその足元へ動かす（いなくなっていれば、最後にいた場所を狙う）
# プレイヤーの矢: すぐ十字架を出す（fall）。敵の矢: 落ちる先に予兆の輪を出し、そのあと十字架を落とす（enemy/skill/warn_light_cross_fall）
# @s ＝ 管理役（at @s）

scoreboard players operation #light_cross_target temp = @s spawn_target_id
tag @s add light_cross_now
execute as @e[type=#tm_rpg:mob_type,tag=mob,distance=..48] if score @s ent_id = #light_cross_target temp at @s run teleport @e[type=minecraft:marker,tag=light_cross_now,distance=..49,limit=1] ~ ~ ~
tag @s remove light_cross_now

# 敵の矢: 撃った敵（summon_ent_id）に、管理役の場所で予兆付きの入口を使わせる
scoreboard players operation #light_cross_owner temp = @s summon_ent_id
execute if entity @s[tag=enemy_shot] at @s as @e[type=#tm_rpg:mob_type,tag=enemy,distance=..64] if score @s ent_id = #light_cross_owner temp run function tm_rpg:enemy/skill/warn_light_cross_fall
execute if entity @s[tag=enemy_shot] run return 0

# プレイヤーの矢: すぐ十字架を出す（spawner の子なので、出した tick の分も動かす: #light_cross_tick）
scoreboard players set #light_cross_tick temp 1
execute at @s run function tm_rpg:player/skill/light_cross/fall
scoreboard players set #light_cross_tick temp 0
