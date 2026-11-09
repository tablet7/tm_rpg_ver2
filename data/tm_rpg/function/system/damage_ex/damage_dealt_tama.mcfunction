#> tm_rpg:system/damage_ex/damage_dealt_tama

# 弾（飛び道具）用のダメージ計算関数（マクロなし）。同じ弾（id）に一度当たったエンティティには重ねてダメージを与えない（現在は呼び出し元なし）
# 使い方: storage tm_rpg:damage に p_damage, m_damage, c_damage, func, id を入れてから function tm_rpg:system/damage_ex/damage_dealt_tama
# @s ＝ ダメージを受けるエンティティ

# ダメージの計算・表記
scoreboard players set @s damage_dealt_per 100

execute store result score @s damage_dealt_pmc_p run data get storage tm_rpg:damage p_damage
execute store result score @s damage_dealt_pmc_m run data get storage tm_rpg:damage m_damage
execute store result score @s damage_dealt_pmc_c run data get storage tm_rpg:damage c_damage

# func が non_func（何もしない）以外のときだけ、マクロで func を実行する
execute unless data storage tm_rpg:damage {func:"tm_rpg:system/naguri/non_func"} run function tm_rpg:system/damage_ex/run_func with storage tm_rpg:damage

# 同じ弾にすでに当たっていたらダメージを0にし、当たった印（tag hit_<id>）を付ける
function tm_rpg:system/damage_ex/tama_hit with storage tm_rpg:damage

# 破裂
execute if score @s[tag=!vibration_damage_flag,tag=!bleeding_damage_flag,tag=!burn_damage_flag,tag=!0damage_ent] rupture_time matches 1.. run function tm_rpg:system/abnormal/rupture_damage
# 沈潜
execute if score @s[tag=!vibration_damage_flag,tag=!bleeding_damage_flag,tag=!burn_damage_flag,tag=!0damage_ent] sinking_time matches 1.. run function tm_rpg:system/abnormal/sinking_damage

# 回避
execute store result score @s random_rand run random value 1..100
scoreboard players operation @s temp = @s evasion 
execute if score @s temp matches 51.. run scoreboard players set @s temp 50
execute if score @s temp > @s random_rand run function tm_rpg:system/damage_ex/evasion_damage

# 物理
execute if score @s armor matches ..75 run scoreboard players operation @s random_rand = @s armor
execute if score @s armor matches 76.. run scoreboard players set @s random_rand 75
#execute if score @s armor matches 100.. if score @s guardian_skill4_buff_time matches 1.. run scoreboard players set @s random_rand 100
scoreboard players operation @s damage_dealt_per -= @s random_rand
scoreboard players operation @s damage_dealt_pmc_p *= @s damage_dealt_per
scoreboard players operation @s damage_dealt_pmc_p /= System CONTACT_100

execute if score @s armor matches 76.. run scoreboard players operation @s random_rand = @s armor
execute if score @s armor matches 76.. run scoreboard players operation @s random_rand /= System CONTACT_4
execute if score @s armor matches 76.. run scoreboard players operation @s damage_dealt_pmc_p -= @s random_rand
execute if score @s armor matches 76.. if score @s damage_dealt_pmc_p matches ..0 run scoreboard players set @s damage_dealt_pmc_p 1

execute store result storage tm_rpg:damage_d damage_type int 1 run scoreboard players get @s damage_dealt_pmc_p
data modify storage tm_rpg:damage_d color set value "red"
execute if score @s damage_dealt_pmc_p matches 1.. run function tm_rpg:system/damage_ex/damage_dealt_m

execute if score @s damage_dealt_pmc_p matches 1.. run scoreboard players operation @s hp -= @s damage_dealt_pmc_p

scoreboard players set @s damage_dealt_per 100

#魔法
execute if score @s magic_armor matches ..75 run scoreboard players operation @s random_rand = @s magic_armor
execute if score @s magic_armor matches 76.. run scoreboard players set @s random_rand 75
#execute if score @s magic_armor matches 100.. if score @s guardian_skill4_buff_time matches 1.. run scoreboard players set @s random_rand 100
scoreboard players operation @s damage_dealt_per -= @s random_rand
scoreboard players operation @s damage_dealt_pmc_m *= @s damage_dealt_per
scoreboard players operation @s damage_dealt_pmc_m /= System CONTACT_100

execute if score @s magic_armor matches 76.. run scoreboard players operation @s random_rand = @s magic_armor
execute if score @s magic_armor matches 76.. run scoreboard players operation @s random_rand /= System CONTACT_4
execute if score @s magic_armor matches 76.. run scoreboard players operation @s damage_dealt_pmc_m -= @s random_rand
execute if score @s magic_armor matches 76.. if score @s damage_dealt_pmc_m matches ..0 run scoreboard players set @s damage_dealt_pmc_m 1

execute store result storage tm_rpg:damage_d damage_type int 1 run scoreboard players get @s damage_dealt_pmc_m
data modify storage tm_rpg:damage_d color set value "blue"
execute if score @s damage_dealt_pmc_m matches 1.. run function tm_rpg:system/damage_ex/damage_dealt_m

execute if score @s damage_dealt_pmc_m matches 1.. run scoreboard players operation @s hp -= @s damage_dealt_pmc_m

# 確定ダメージ
execute store result storage tm_rpg:damage_d damage_type int 1 run scoreboard players get @s damage_dealt_pmc_c
data modify storage tm_rpg:damage_d color set value "white"
execute if score @s damage_dealt_pmc_c matches 1.. run function tm_rpg:system/damage_ex/damage_dealt_m

execute if score @s damage_dealt_pmc_c matches 1.. run scoreboard players operation @s hp -= @s damage_dealt_pmc_c

# ノックバック
damage @s 1 minecraft:player_attack by @e[sort=nearest,limit=1,tag=damage_marker]

#tellraw @a {"score": {"name": "@s", "objective": "damage_dealt_pmc"}}

tag @a remove 0damage_ent
tag @s remove 0damage_ent
