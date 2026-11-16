#> tm_rpg:player/skill/main_projectile/interval

# 一定の間隔で当たる弾（スコア hit_interval が 1 以上）が、この tick に当たり判定をするかを決める関数。main_projectile/tick から呼ばれる
# 戻り値: 1 ＝ 当たり判定をする tick（出してからの経過 tick が hit_interval で割り切れる tick）、0 ＝ しない
# 出した tick から当たる（例: kill_time 20・hit_interval 10 → 出した瞬間・0.5秒後・1秒後の3回）
# 当たり判定をする tick には、id（ent_id）を「hit_base_id ＋ 何回目か」にするので、前に当たった敵にもまた当たる（同じ tick の中では1体1回）
# id と時刻を計算で決めるので、hit_base_id と hit_start が同じ弾どうし（main_projectile/spawner で出したグループ）は、
# 同じ tick に同じ id で当たる（グループ全体で、1回の間隔に1体1回）
# hit_base_id と hit_start は main_projectile/init が入れる（グループは spawner/child_init が上書きする）
# 当たっても消えないように、弾に tag pierce も付けること
# @s ＝ 弾

# 出してからの経過 tick
execute store result score #interval temp run time query gametime
scoreboard players operation #interval temp -= @s hit_start
scoreboard players operation #interval_n temp = #interval temp

# 割り切れない tick は当たり判定をしない
scoreboard players operation #interval temp %= @s hit_interval
execute unless score #interval temp matches 0 run return 0

# id ＝ hit_base_id ＋ 何回目か
scoreboard players operation #interval_n temp /= @s hit_interval
scoreboard players operation @s ent_id = @s hit_base_id
scoreboard players operation @s ent_id += #interval_n temp
return 1
