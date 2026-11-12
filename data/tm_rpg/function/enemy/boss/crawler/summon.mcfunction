#> tm_rpg:enemy/boss/crawler/summon

# crawler を実行位置に召喚する。例: execute positioned ~ ~ ~5 run function tm_rpg:enemy/boss/crawler/summon

function tm_rpg:enemy/boss/crawler/despawn
# このボス用のスコア（既にあれば何も起きない）
scoreboard objectives add boss_t dummy
scoreboard objectives add boss_move dummy
scoreboard objectives add boss_tmp dummy
scoreboard objectives add boss_flash dummy
scoreboard objectives add boss_hp_last dummy
# マスター（足元の位置と向きを持つマーカー。描画も当たり判定もないので軽い）
summon minecraft:marker ~ ~ ~ {Tags:["crawler","crawler.master"]}
# 部位
summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,Health:1000f,attributes:[{id:"minecraft:scale",base:0.8},{id:"minecraft:max_health",base:1000}],DeathTime:19s,DeathLootTable:"",Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],NoGravity:1b,NoAI:1b,Silent:1b,Tags:["crawler","crawler.body"],equipment:{head:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:dyed_color":16777215,"minecraft:item_model":"tm_rpg:boss/crawler/body"}}},drop_chances:{head:0f}}
summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,Health:1000f,attributes:[{id:"minecraft:scale",base:3},{id:"minecraft:max_health",base:1000}],DeathTime:19s,Team:"Enemy",DeathLootTable:"tm_rpg:entity/empty",active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],NoGravity:1b,NoAI:1b,Silent:1b,Tags:["crawler","crawler.head","crawler.part","crawler.core","enemy","new_mob","mob"],equipment:{head:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:dyed_color":16777215,"minecraft:item_model":"tm_rpg:boss/crawler/head"}}},drop_chances:{head:0f}}
data modify storage tm_rpg:enemy_status data set value {Lv:1,HP:1000,HP_MAX:1000,hp_rege:10,MP:1000,MP_MAX:1000,mp_rege:10,armor:10,magic_armor:10,p_attack:10,m_attack:10,cooltime:10,sustain_time:10,sustain_power:10,crit_per:10,crit_damage:5,job_bonus:1000,evasin:0,luck:1000}
execute as @e[type=#tm_rpg:crawler_part,tag=new_mob,distance=..2,limit=1] at @s run function tm_rpg:enemy/enemy_set_status
summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,Health:1000f,attributes:[{id:"minecraft:scale",base:0.8},{id:"minecraft:max_health",base:1000}],DeathTime:19s,DeathLootTable:"",Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],NoGravity:1b,NoAI:1b,Silent:1b,Tags:["crawler","crawler.jaw"],equipment:{head:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:dyed_color":16777215,"minecraft:item_model":"tm_rpg:boss/crawler/jaw"}}},drop_chances:{head:0f}}
summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,Health:1000f,attributes:[{id:"minecraft:scale",base:1.6},{id:"minecraft:max_health",base:1000}],DeathTime:19s,DeathLootTable:"",Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],NoGravity:1b,NoAI:1b,Silent:1b,Tags:["crawler","crawler.arm_u"],equipment:{head:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:dyed_color":16777215,"minecraft:item_model":"tm_rpg:boss/crawler/arm_u"}}},drop_chances:{head:0f}}
summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,Health:1000f,attributes:[{id:"minecraft:scale",base:1.6},{id:"minecraft:max_health",base:1000}],DeathTime:19s,DeathLootTable:"",Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],NoGravity:1b,NoAI:1b,Silent:1b,Tags:["crawler","crawler.arm_f"],equipment:{head:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:dyed_color":16777215,"minecraft:item_model":"tm_rpg:boss/crawler/arm_f"}}},drop_chances:{head:0f}}
# 部位の初期化（HPの記録。HP集約のときは本体以外のHPバーを消す）
execute as @e[type=#tm_rpg:crawler_part,tag=crawler,distance=..2] run function tm_rpg:enemy/boss/crawler/part_init
scoreboard players set @e[type=minecraft:marker,tag=crawler.master,limit=1] boss_move 1
scoreboard players set @e[type=minecraft:marker,tag=crawler.master,limit=1] boss_t 0
