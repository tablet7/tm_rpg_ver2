#> tm_rpg:player/skill/fx/seq/follow

# 時間差の演出の進行役を、使った人（ent_id が進行役の summon_ent_id と同じ）の場所・向きに動かす。fx/seq/tick から、tag fx_follow の進行役だけ呼ばれる
# 使った人が 64 マスより離れた・いなくなったときは、その場に残る
# @s ＝ 進行役（at @s）

scoreboard players operation #fx_owner temp = @s summon_ent_id
tag @s add fx_follow_now
execute as @e[type=#tm_rpg:mob_type,tag=mob,distance=..64] if score @s ent_id = #fx_owner temp run teleport @e[type=minecraft:marker,tag=fx_follow_now,distance=..64,limit=1] @s
tag @s remove fx_follow_now
