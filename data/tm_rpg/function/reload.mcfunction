#> tm_rpg:reload

# system
kill @e[tag=enemy]
kill @e[tag=mount_text]
kill @e[type=item]

# scoreboard

# sysetm
scoreboard objectives add ent_id dummy
scoreboard objectives add kill_time dummy
scoreboard objectives add dash_kill_time dummy

## 自由変数
scoreboard objectives add random_rand dummy
scoreboard objectives add temp dummy

## 定数
scoreboard objectives add CONTACT_1 dummy
scoreboard players set System CONTACT_1 1
scoreboard objectives add CONTACT_2 dummy
scoreboard players set System CONTACT_2 2
scoreboard objectives add CONTACT_4 dummy
scoreboard players set System CONTACT_4 4
scoreboard objectives add CONTACT_20 dummy
scoreboard players set System CONTACT_20 20
scoreboard objectives add CONTACT_3 dummy
scoreboard players set System CONTACT_3 3
scoreboard objectives add CONTACT_5 dummy
scoreboard players set System CONTACT_5 5
scoreboard objectives add CONTACT_10 dummy
scoreboard players set System CONTACT_10 10
scoreboard objectives add CONTACT_100 dummy
scoreboard players set System CONTACT_100 100

## 時間
scoreboard objectives add tick dummy
scoreboard objectives add 2tick dummy
scoreboard objectives add seconds dummy
scoreboard objectives add minutes dummy
scoreboard objectives add hours dummy

scoreboard players set System tick 0
scoreboard players set System 2tick 0
scoreboard players set System seconds 0
scoreboard players set System minutes 0
scoreboard players set System hours 0

## player
scoreboard objectives add Lv dummy
scoreboard objectives add hp_ratio dummy
scoreboard objectives add player_deaths deathCount
scoreboard objectives add used_carrot_on_a_stick minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add x_pos dummy
scoreboard objectives add y_pos dummy
scoreboard objectives add z_pos dummy
scoreboard objectives add old_x_pos dummy
scoreboard objectives add old_y_pos dummy
scoreboard objectives add old_z_pos dummy
scoreboard objectives add is_moving dummy

scoreboard objectives add shot_bow used:bow
scoreboard objectives add shot_bow_time dummy

## entity
### ダメージ
scoreboard objectives add damage_dealt_pmc_p dummy
scoreboard objectives add damage_dealt_pmc_m dummy
scoreboard objectives add damage_dealt_pmc_c dummy
scoreboard objectives add damage_dealt_per dummy

scoreboard objectives add damage_give_p dummy
scoreboard objectives add damage_give_m dummy
scoreboard objectives add damage_give_c dummy
scoreboard objectives add debuff_give_time dummy
scoreboard objectives add debuff_give_power dummy

### Stutas
#### 基礎値
scoreboard objectives add HP_MAX_LEV dummy
scoreboard objectives add HP_REGE_MAX_LEV dummy
scoreboard objectives add MP_MAX_LEV dummy
scoreboard objectives add MP_REGE_MAX_LEV dummy
scoreboard objectives add ARMOR_MAX_LEV dummy
scoreboard objectives add MAGIC_ARMOR_MAX_LEV dummy
scoreboard objectives add P_ATTACK_MAX_LEV dummy
scoreboard objectives add M_ATTACK_MAX_LEV dummy
scoreboard objectives add COOLTIME_MAX_LEV dummy
scoreboard objectives add SUSTAIN_TIME_MAX_LEV dummy
scoreboard objectives add SUSTAIN_POWER_MAX_LEV dummy
scoreboard objectives add CRIT_PER_MAX_LEV dummy
scoreboard objectives add CRIT_DAMAGE_MAX_LEV dummy
scoreboard objectives add JOB_BONUS_MAX_LEV dummy
scoreboard objectives add EVASION_MAX_LEV dummy
scoreboard objectives add LUCK_MAX_LEV dummy

#### 実数値
scoreboard objectives add HP_MAX dummy
scoreboard objectives add hp dummy
scoreboard objectives add MP_MAX dummy
scoreboard objectives add mp dummy
scoreboard objectives add hp_rege dummy
scoreboard objectives add mp_rege dummy
scoreboard objectives add armor dummy
scoreboard objectives add magic_armor dummy
scoreboard objectives add p_attack dummy
scoreboard objectives add m_attack dummy
scoreboard objectives add cooltime dummy
scoreboard objectives add sustain_time dummy
scoreboard objectives add sustain_power dummy
scoreboard objectives add crit_per dummy
scoreboard objectives add crit_damage dummy
scoreboard objectives add job_bonus dummy
scoreboard objectives add evasion dummy
scoreboard objectives add luck dummy

#### 計算用基本０になる
scoreboard objectives add hp_score dummy
scoreboard objectives add mp_score dummy
scoreboard objectives add hp_rege_score dummy
scoreboard objectives add mp_rege_score dummy
scoreboard objectives add armor_score dummy
scoreboard objectives add magic_armor_score dummy
scoreboard objectives add p_attack_score dummy
scoreboard objectives add m_attack_score dummy
scoreboard objectives add cooltime_score dummy
scoreboard objectives add sustain_time_score dummy
scoreboard objectives add sustain_power_score dummy
scoreboard objectives add crit_per_score dummy
scoreboard objectives add crit_damage_score dummy
scoreboard objectives add job_bonus_score dummy
scoreboard objectives add evasion_score dummy
scoreboard objectives add luck_score dummy

#### スキルポイント
scoreboard objectives add ADD_POINT_ALL_LEV dummy

scoreboard objectives add add_point_all dummy
scoreboard objectives add add_point_hp_buff dummy
scoreboard objectives add add_point_mp_buff dummy
scoreboard objectives add add_point_hp_rage_buff dummy
scoreboard objectives add add_point_mp_rage_buff dummy
scoreboard objectives add add_point_armor_buff dummy
scoreboard objectives add add_point_magicarmor_buff dummy
scoreboard objectives add add_point_pattack_buff dummy
scoreboard objectives add add_point_mattack_buff dummy
scoreboard objectives add add_point_cooltime_buff dummy
scoreboard objectives add add_point_sustain_buff dummy
scoreboard objectives add add_point_sustainP_buff dummy
scoreboard objectives add add_point_critper_buff dummy
scoreboard objectives add add_point_critdamage_buff dummy
scoreboard objectives add add_point_job_buff dummy
scoreboard objectives add add_point_evasion_buff dummy
scoreboard objectives add add_point_luck_buff dummy

#### ポーション
##### ポーション
scoreboard objectives add potion_hp_buff_time dummy
scoreboard objectives add potion_hp_buff dummy

scoreboard objectives add potion_mp_buff_time dummy
scoreboard objectives add potion_mp_buff dummy

scoreboard objectives add potion_hp_rage_buff_time dummy
scoreboard objectives add potion_hp_rage_buff dummy

scoreboard objectives add potion_mp_rage_buff_time dummy
scoreboard objectives add potion_mp_rage_buff dummy

scoreboard objectives add potion_armor_buff_time dummy
scoreboard objectives add potion_armor_buff dummy

scoreboard objectives add potion_magicarmor_buff_time dummy
scoreboard objectives add potion_magicarmor_buff dummy

scoreboard objectives add potion_pattack_buff_time dummy
scoreboard objectives add potion_pattack_buff dummy

scoreboard objectives add potion_mattack_buff_time dummy
scoreboard objectives add potion_mattack_buff dummy

scoreboard objectives add potion_cooltime_buff_time dummy
scoreboard objectives add potion_cooltime_buff dummy

scoreboard objectives add potion_sustain_buff_time dummy
scoreboard objectives add potion_sustain_buff dummy

scoreboard objectives add potion_sustainP_buff_time dummy
scoreboard objectives add potion_sustainP_buff dummy

scoreboard objectives add potion_critper_buff_time dummy
scoreboard objectives add potion_critper_buff dummy

scoreboard objectives add potion_critdamage_buff_time dummy
scoreboard objectives add potion_critdamage_buff dummy

scoreboard objectives add potion_job_buff_time dummy
scoreboard objectives add potion_job_buff dummy

scoreboard objectives add potion_evasion_buff_time dummy
scoreboard objectives add potion_evasion_buff dummy

scoreboard objectives add potion_luck_buff_time dummy
scoreboard objectives add potion_luck_buff dummy

### クールタイム
scoreboard objectives add ATTACK_TIMER_LEV dummy
scoreboard objectives add attack_timer dummy

scoreboard objectives add skill_recast_kei dummy

scoreboard objectives add skill1_recast dummy
scoreboard objectives add skill2_recast dummy
scoreboard objectives add skill3_recast dummy
scoreboard objectives add skill4_recast dummy
scoreboard objectives add skill5_recast dummy
scoreboard objectives add skill6_recast dummy

### 状態異常
#### 火傷
scoreboard objectives add real_fire_time dummy
scoreboard objectives add burn_potency dummy
scoreboard objectives add burn_time dummy

#### 出血
scoreboard objectives add bleeding_potency dummy
scoreboard objectives add bleeding_time dummy

#### 破裂
scoreboard objectives add rupture_potency dummy
scoreboard objectives add rupture_time dummy

#### 沈潜
scoreboard objectives add sinking_potency dummy
scoreboard objectives add sinking_time dummy

#### 振動
scoreboard objectives add vibration_potency dummy
scoreboard objectives add vibration_time dummy

### 資源
scoreboard objectives add resource dummy {"text":"資源","color":"green"}
scoreboard objectives setdisplay sidebar resource
scoreboard players set お金 resource 0

### tag破壊用
tag @a remove temp_victim
scoreboard objectives add temp_victim_remove dummy

# team
team add Player
team modify Player nametagVisibility always

team add Enemy
team modify Enemy color light_purple
team modify Enemy nametagVisibility always

# reload
execute as @a at @s run function tm_rpg:player/reload