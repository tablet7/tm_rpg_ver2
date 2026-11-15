#> tm_rpg:player/skill/main_projectile/spawner/spawn

# 管理役が子を1個出して、次の場所へ進む関数。spawner/tick から呼ばれる
# 子の初期設定（main_projectile/init）がそのまま使えるように、スキルを使った tick の値を storage tm_rpg:damage と #skill_owner temp に戻してから、
# スキル名のタグで子を出す関数（<スキル>/skill3）を呼ぶ。スキルを足したら、下の「子を出す」に1行足す
# 戻り値: 1 ＝ 次の場所が壁の中（もう出さない）、0 ＝ 続ける
# @s ＝ 管理役（at @s）

# スキルを使った tick の値を戻す（10 tick 後などには、storage は別のスキルの値になっているため）
execute store result storage tm_rpg:damage p_damage int 1 run scoreboard players get @s damage_give_p
execute store result storage tm_rpg:damage m_damage int 1 run scoreboard players get @s damage_give_m
execute store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s damage_give_c
execute store result storage tm_rpg:damage kill_time int 1 run scoreboard players get @s spawn_kill_time
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"
execute if data entity @s data.func run data modify storage tm_rpg:damage func set from entity @s data.func
scoreboard players operation #skill_owner temp = @s summon_ent_id

# グループの id・開始時刻・当たる間隔（spawner/child_init が子に写す。間隔が無ければ reset のまま）
scoreboard players operation #spawn_id temp = @s ent_id
scoreboard players operation #spawn_start temp = @s hit_start
scoreboard players reset #spawn_hit_interval temp
scoreboard players operation #spawn_hit_interval temp = @s hit_interval

# 子を出す（スキルごと。<スキル>/skill3 は @s ＝ 管理役で呼ばれ、execute summon ... run function で子を出す）
execute if entity @s[tag=test_obj_line] run function tm_rpg:player/skill/test_obj_line/skill3

# 次の場所へ、横の向きのまま spawn_step（0.1 マス単位）だけまっすぐ進む。マス目には合わせない（斜めでも等間隔）
# マクロを使わずに好きな距離を進めるように、3.2 / 1.6 / 0.8 / 0.4 / 0.2 / 0.1 マスを大きい順に組み合わせる（最大 6.3 マス）
# tp の ^ は実行位置が基準なので、1回ごとに at @s で今の位置から進める
scoreboard players operation #spawn_step temp = @s spawn_step
execute if score #spawn_step temp matches 32.. at @s run tp @s ^ ^ ^3.2
execute if score #spawn_step temp matches 32.. run scoreboard players remove #spawn_step temp 32
execute if score #spawn_step temp matches 16.. at @s run tp @s ^ ^ ^1.6
execute if score #spawn_step temp matches 16.. run scoreboard players remove #spawn_step temp 16
execute if score #spawn_step temp matches 8.. at @s run tp @s ^ ^ ^0.8
execute if score #spawn_step temp matches 8.. run scoreboard players remove #spawn_step temp 8
execute if score #spawn_step temp matches 4.. at @s run tp @s ^ ^ ^0.4
execute if score #spawn_step temp matches 4.. run scoreboard players remove #spawn_step temp 4
execute if score #spawn_step temp matches 2.. at @s run tp @s ^ ^ ^0.2
execute if score #spawn_step temp matches 2.. run scoreboard players remove #spawn_step temp 2
execute if score #spawn_step temp matches 1.. at @s run tp @s ^ ^ ^0.1

# 地面の高さに合わせる。合わせても壁の中なら 1 を返す
execute at @s run function tm_rpg:player/skill/common/snap_ground
execute at @s unless block ~ ~ ~ #minecraft:replaceable run return 1
return 0
