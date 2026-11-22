#> tm_rpg:enemy/boss/guardian_wolf/summon

# guardian_wolf を実行位置に召喚する。例: execute positioned ~ ~ ~8 run function tm_rpg:enemy/boss/guardian_wolf/summon
# 見た目は部位ごとの item_display（マスターの上に立ち、transformation で姿勢を付ける）、当たり判定は見えない Mob（tm_rpg の敵・HP は本体に集約）

function tm_rpg:enemy/boss/guardian_wolf/despawn
# このボス用のスコア（既にあれば何も起きない）
scoreboard objectives add boss_t dummy
scoreboard objectives add boss_move dummy
scoreboard objectives add boss_tmp dummy
scoreboard objectives add boss_hp_last dummy
scoreboard objectives add boss_flash dummy
scoreboard objectives add boss_phase dummy
scoreboard objectives add boss_form dummy
scoreboard objectives add boss_force dummy
scoreboard objectives add boss_rep dummy
scoreboard objectives add boss_dead dummy
scoreboard objectives add boss_core_hp dummy
scoreboard objectives add boss_walk dummy
scoreboard objectives add boss_lx dummy
scoreboard objectives add boss_ly dummy
scoreboard objectives add boss_lz dummy
scoreboard objectives add boss_ldx dummy
scoreboard objectives add boss_ldy dummy
scoreboard objectives add boss_ldz dummy
scoreboard objectives add boss_cd2 dummy
scoreboard objectives add boss_cd3 dummy
scoreboard objectives add boss_cd4 dummy
scoreboard objectives add boss_cd5 dummy
scoreboard objectives add boss_cd6 dummy
# マスター（足元の位置と向きを持つマーカー。描画も当たり判定もないので軽い）
summon minecraft:marker ~ ~ ~ {Tags:["guardian_wolf","guardian_wolf.master"]}
# 当たり判定（見えない Mob。tm_rpg の敵）
summon minecraft:polar_bear ~ ~ ~ {PersistenceRequired:1b,Health:1000f,attributes:[{id:"minecraft:scale",base:2.8},{id:"minecraft:max_health",base:1000}],DeathTime:19s,Team:"Enemy",DeathLootTable:"tm_rpg:entity/empty",active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],NoGravity:1b,NoAI:1b,Silent:1b,Tags:["guardian_wolf","guardian_wolf.hb","guardian_wolf.hb.body","guardian_wolf.part","guardian_wolf.core","enemy","new_mob","mob","hitdamage"]}
data modify storage tm_rpg:enemy_status data set value {Lv:1,HP:1000,HP_MAX:1000,hp_rege:10,MP:1000,MP_MAX:1000,mp_rege:10,armor:10,magic_armor:10,p_attack:10,m_attack:10,cooltime:10,sustain_time:10,sustain_power:10,crit_per:10,crit_damage:5,job_bonus:1000,evasin:0,luck:1000}
execute as @e[type=#tm_rpg:guardian_wolf_part,tag=new_mob,distance=..2,limit=1] at @s run function tm_rpg:enemy/enemy_set_status
summon minecraft:polar_bear ~ ~ ~ {PersistenceRequired:1b,Health:1000f,attributes:[{id:"minecraft:scale",base:1.6},{id:"minecraft:max_health",base:1000}],DeathTime:19s,Team:"Enemy",DeathLootTable:"tm_rpg:entity/empty",active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],NoGravity:1b,NoAI:1b,Silent:1b,Tags:["guardian_wolf","guardian_wolf.hb","guardian_wolf.hb.head","guardian_wolf.part","enemy","new_mob","mob","hitdamage"]}
data modify storage tm_rpg:enemy_status data set value {Lv:1,HP:1000,HP_MAX:1000,hp_rege:10,MP:1000,MP_MAX:1000,mp_rege:10,armor:10,magic_armor:10,p_attack:10,m_attack:10,cooltime:10,sustain_time:10,sustain_power:10,crit_per:10,crit_damage:5,job_bonus:1000,evasin:0,luck:1000}
execute as @e[type=#tm_rpg:guardian_wolf_part,tag=new_mob,distance=..2,limit=1] at @s run function tm_rpg:enemy/enemy_set_status
summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,Health:1000f,attributes:[{id:"minecraft:scale",base:1.35},{id:"minecraft:max_health",base:1000}],DeathTime:19s,Team:"Enemy",DeathLootTable:"tm_rpg:entity/empty",active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],NoGravity:1b,NoAI:1b,Silent:1b,Tags:["guardian_wolf","guardian_wolf.hb","guardian_wolf.hb.arm_r","guardian_wolf.part","enemy","new_mob","mob","hitdamage"]}
data modify storage tm_rpg:enemy_status data set value {Lv:1,HP:1000,HP_MAX:1000,hp_rege:10,MP:1000,MP_MAX:1000,mp_rege:10,armor:10,magic_armor:10,p_attack:10,m_attack:10,cooltime:10,sustain_time:10,sustain_power:10,crit_per:10,crit_damage:5,job_bonus:1000,evasin:0,luck:1000}
execute as @e[type=#tm_rpg:guardian_wolf_part,tag=new_mob,distance=..2,limit=1] at @s run function tm_rpg:enemy/enemy_set_status
summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,Health:1000f,attributes:[{id:"minecraft:scale",base:1.35},{id:"minecraft:max_health",base:1000}],DeathTime:19s,Team:"Enemy",DeathLootTable:"tm_rpg:entity/empty",active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],NoGravity:1b,NoAI:1b,Silent:1b,Tags:["guardian_wolf","guardian_wolf.hb","guardian_wolf.hb.arm_l","guardian_wolf.part","enemy","new_mob","mob","hitdamage"]}
data modify storage tm_rpg:enemy_status data set value {Lv:1,HP:1000,HP_MAX:1000,hp_rege:10,MP:1000,MP_MAX:1000,mp_rege:10,armor:10,magic_armor:10,p_attack:10,m_attack:10,cooltime:10,sustain_time:10,sustain_power:10,crit_per:10,crit_damage:5,job_bonus:1000,evasin:0,luck:1000}
execute as @e[type=#tm_rpg:guardian_wolf_part,tag=new_mob,distance=..2,limit=1] at @s run function tm_rpg:enemy/enemy_set_status
summon minecraft:polar_bear ~ ~ ~ {PersistenceRequired:1b,Health:1000f,attributes:[{id:"minecraft:scale",base:1.6},{id:"minecraft:max_health",base:1000}],DeathTime:19s,Team:"Enemy",DeathLootTable:"tm_rpg:entity/empty",active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],NoGravity:1b,NoAI:1b,Silent:1b,Tags:["guardian_wolf","guardian_wolf.hb","guardian_wolf.hb.tail","guardian_wolf.part","enemy","new_mob","mob","hitdamage"]}
data modify storage tm_rpg:enemy_status data set value {Lv:1,HP:1000,HP_MAX:1000,hp_rege:10,MP:1000,MP_MAX:1000,mp_rege:10,armor:10,magic_armor:10,p_attack:10,m_attack:10,cooltime:10,sustain_time:10,sustain_power:10,crit_per:10,crit_damage:5,job_bonus:1000,evasin:0,luck:1000}
execute as @e[type=#tm_rpg:guardian_wolf_part,tag=new_mob,distance=..2,limit=1] at @s run function tm_rpg:enemy/enemy_set_status
# 見た目（item_display。tag mob_model ＝ tm_rpg:reload でも消える）。item_display:"none" ＝ モデルの (8,8,8) が回転の中心
summon minecraft:item_display ~ ~ ~ {Tags:["guardian_wolf","guardian_wolf.v","guardian_wolf.v.body","mob_model"],item:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:dyed_color":16777215,"minecraft:item_model":"tm_rpg:boss/guardian_wolf/body"}},item_display:"none",teleport_duration:2,view_range:2f,transformation:{translation:[0f,2.2f,0.2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.6f,2.6f,2.6f]}}
summon minecraft:item_display ~ ~ ~ {Tags:["guardian_wolf","guardian_wolf.v","guardian_wolf.v.head","mob_model"],item:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:dyed_color":16777215,"minecraft:item_model":"tm_rpg:boss/guardian_wolf/head"}},item_display:"none",teleport_duration:2,view_range:2f,transformation:{translation:[0f,3.7f,4.1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]}}
summon minecraft:item_display ~ ~ ~ {Tags:["guardian_wolf","guardian_wolf.v","guardian_wolf.v.arm_r","mob_model"],item:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:dyed_color":16777215,"minecraft:item_model":"tm_rpg:boss/guardian_wolf/arm_r"}},item_display:"none",teleport_duration:2,view_range:2f,transformation:{translation:[-1.6f,1.55f,2.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]}}
summon minecraft:item_display ~ ~ ~ {Tags:["guardian_wolf","guardian_wolf.v","guardian_wolf.v.arm_l","mob_model"],item:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:dyed_color":16777215,"minecraft:item_model":"tm_rpg:boss/guardian_wolf/arm_l"}},item_display:"none",teleport_duration:2,view_range:2f,transformation:{translation:[1.6f,1.55f,2.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]}}
summon minecraft:item_display ~ ~ ~ {Tags:["guardian_wolf","guardian_wolf.v","guardian_wolf.v.tail","mob_model"],item:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:dyed_color":16777215,"minecraft:item_model":"tm_rpg:boss/guardian_wolf/tail"}},item_display:"none",teleport_duration:2,view_range:2f,transformation:{translation:[0f,2f,-4.4f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.2f,2.2f,2.2f]}}
# 当たり判定の初期化（HPの記録。本体以外のHPバーを消す）
execute as @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.hb,distance=..2] run function tm_rpg:enemy/boss/guardian_wolf/part_init
# 状態（行動 1 ＝ 待機、形態 1 から）
scoreboard players set @e[type=minecraft:marker,tag=guardian_wolf.master,limit=1] boss_move 1
scoreboard players set @e[type=minecraft:marker,tag=guardian_wolf.master,limit=1] boss_t 0
scoreboard players set @e[type=minecraft:marker,tag=guardian_wolf.master,limit=1] boss_phase 1
scoreboard players set @e[type=minecraft:marker,tag=guardian_wolf.master,limit=1] boss_form 1
scoreboard players set @e[type=minecraft:marker,tag=guardian_wolf.master,limit=1] boss_force 0
scoreboard players set @e[type=minecraft:marker,tag=guardian_wolf.master,limit=1] boss_rep 0
scoreboard players set @e[type=minecraft:marker,tag=guardian_wolf.master,limit=1] boss_dead 0
scoreboard players set @e[type=minecraft:marker,tag=guardian_wolf.master,limit=1] boss_flash 0
scoreboard players set @e[type=minecraft:marker,tag=guardian_wolf.master,limit=1] boss_core_hp 1000
scoreboard players set @e[type=minecraft:marker,tag=guardian_wolf.master,limit=1] boss_walk 0
# 召喚したときの処理（手で書いた関数）
execute as @e[type=minecraft:marker,tag=guardian_wolf.master,limit=1] at @s run function tm_rpg:enemy/boss/guardian_wolf/hook/summon
