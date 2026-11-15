#> tm_rpg:player/skill/main_projectile/interval

# 一定の間隔で当たる弾（スコア hit_interval が 1 以上）が、この tick に当たり判定をするかを決める関数。main_projectile/tick から呼ばれる
# 戻り値: 1 ＝ 当たり判定をする tick（kill_time が hit_interval で割り切れる tick）、0 ＝ しない
# 当たり判定をする tick には弾の id（ent_id）を新しくするので、前に当たった敵にもまた当たる（同じ tick の中では1体1回）
# 置いた瞬間から当てたいときは、kill_time を hit_interval の倍数にする（例: kill_time 20・hit_interval 10 → 置いた瞬間・0.5秒後・1秒後の3回）
# 当たっても消えないように、弾に tag pierce も付けること
# @s ＝ 弾

scoreboard players operation #interval temp = @s kill_time
scoreboard players operation #interval temp %= @s hit_interval
execute unless score #interval temp matches 0 run return 0

execute store result score @s ent_id run random value 0..2147483646
return 1
