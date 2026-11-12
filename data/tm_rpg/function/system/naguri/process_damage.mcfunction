#> tm_rpg:system/naguri/process_damage

# 殴られた際にダメージ計算を行う関数。naguri/on_hurt_by、naguri/on_hurt_other から呼ばれる
# 殴った側の武器（custom_data）とステータスからダメージを決め、damage_ex/damage_dealt を実行する

# @s ＝ 殴られた側

#say @s なぐられた

# 殴った側への処理は execute on attacker を使う

#execute on attacker run say @s なぐった

#say a
#execute on attacker run say b

# スコアをストレージへ
data modify storage tm_rpg:damage p_damage set value 0
data modify storage tm_rpg:damage m_damage set value 0
data modify storage tm_rpg:damage c_damage set value 0

# 殴った側の武器の custom_data を storage に入れる
data remove storage tm_rpg:weapon data
execute on attacker if entity @s[type=player] run data modify storage tm_rpg:weapon data set from entity @s SelectedItem.components."minecraft:custom_data"
execute on attacker if entity @s[type=!player] run data modify storage tm_rpg:weapon data set from entity @s equipment.mainhand.components."minecraft:custom_data"

execute on attacker run scoreboard players set @s temp4 0

# 攻撃間隔を満たしていれば、武器のダメージを計算する
execute on attacker if score @s attack_timer >= @s ATTACK_TIMER_LEV if data storage tm_rpg:weapon data.damage_type run function tm_rpg:system/naguri/weapon_damage

## クリティカル
execute on attacker store result score @s random_rand run random value 1..100
execute on attacker if score @s crit_per >= @s random_rand run scoreboard players operation @s temp4 += @s crit_damage
execute on attacker store result storage tm_rpg:damage c_damage int 1 run scoreboard players get @s temp4

# func
data modify storage tm_rpg:damage func set value "tm_rpg:system/naguri/non_func"

# 攻撃時間リセット
execute on attacker run scoreboard players set @s attack_timer 0

# ノックバックしたときは判定しない
execute on attacker if entity @s[tag=temp_victim] run function tm_rpg:system/naguri/0damage

# ダメージを与える
function tm_rpg:system/damage_ex/damage_dealt
