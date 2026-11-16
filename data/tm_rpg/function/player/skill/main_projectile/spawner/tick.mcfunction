#> tm_rpg:player/skill/main_projectile/spawner/tick

# 時間差で設置物などを出す管理役（tag spawner）の毎 tick の処理。main_projectile/tick から呼ばれる
# spawn_interval tick ごとに spawner/spawn で子を1個出し、spawn_count 個出し終わるか、次の場所が壁の中なら消える
# 消したあとは、この管理役のスコアを触らない（return run kill で終わる）
# @s ＝ 管理役（at @s）

scoreboard players remove @s spawn_timer 1
execute if score @s spawn_timer matches 1.. run return 0

# 出す tick
scoreboard players operation @s spawn_timer = @s spawn_interval
scoreboard players remove @s spawn_count 1

# 子を出して次の場所へ進む（1 が返ったら、次の場所が壁の中なのでやめる）
execute if function tm_rpg:player/skill/main_projectile/spawner/spawn run return run kill @s
execute if score @s spawn_count matches ..0 run return run kill @s
