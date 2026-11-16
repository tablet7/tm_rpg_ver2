#> tm_rpg:enemy/skill/warn/tick

# 予兆のタイマー（marker。tag warn_marker）の毎 tick の処理。main から呼ばれる
# warn_timer が 0 になったら、技を使う敵（summon_ent_id ＝ 敵の ent_id）に、この場所・この向きからスキルを使わせて消える
# 敵がいなくなっていたら、何もせずに消える
# @s ＝ タイマー（at @s）

scoreboard players remove @s warn_timer 1
execute if score @s warn_timer matches 1.. run return 0

# 敵を探して、この場所・この向きから技を使わせる（enemy/skill/warn/fire が tag warn_firing の marker を見て、使うスキルを選ぶ）
tag @s add warn_firing
scoreboard players operation #warn_owner temp = @s summon_ent_id
execute as @e[type=#tm_rpg:mob_type,tag=enemy] if score @s ent_id = #warn_owner temp positioned as @e[type=minecraft:marker,tag=warn_firing,limit=1] rotated as @e[type=minecraft:marker,tag=warn_firing,limit=1] run function tm_rpg:enemy/skill/warn/fire
# 予兆付きの入口（warn_<スキル>）は、tag warn_firing のタイマーがあるかで「予兆が終わった2回目」を見分ける。
# 同じ tick に、ほかの敵が同じ技の1回目（予兆を出す）を呼んでも2回目と間違えないように、使い終わったらすぐ外す
tag @s remove warn_firing
kill @s
