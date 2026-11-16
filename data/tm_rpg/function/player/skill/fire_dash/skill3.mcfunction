#> tm_rpg:player/skill/fire_dash/skill3

# スキル「炎の突進」の溜めが終わった tick の処理。main_projectile/spawner/spawn から、tag fire_dash の管理役で呼ばれる
# 使った人（ent_id が管理役の summon_ent_id と同じ）を探し、その人の今の場所・向きで突進させる（溜めのあいだに向きを変えていれば、その向きへ）
# spawner/spawn が storage tm_rpg:damage・#skill_owner temp・#skill_side temp を、使った tick の値に戻している
# @s ＝ 管理役（at @s）

scoreboard players operation #fire_dash_owner temp = @s summon_ent_id
execute as @e[type=#tm_rpg:mob_type,tag=mob,distance=..32] if score @s ent_id = #fire_dash_owner temp at @s run function tm_rpg:player/skill/fire_dash/dash
