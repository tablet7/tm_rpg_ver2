#> tm_rpg:enemy/summon/sealed_statue

# 封印された守護像 を実行位置に1体召喚する（マクロなし。何体でも同時に出せる）
# 使い方: execute positioned <x> <y> <z> run function tm_rpg:enemy/summon/sealed_statue

# このモブ用のスコア（既にあれば何も起きない）
scoreboard objectives add mob_anim dummy
summon minecraft:husk ~ ~ ~ {PersistenceRequired:1b,Silent:1b,Team:"Enemy",DeathLootTable:"tm_rpg:entity/empty",Health:1000f,Tags:["sealed_statue","enemy","new_mob","mob","hitdamage"],attributes:[{id:"minecraft:scale",base:1},{id:"minecraft:max_health",base:1000}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}],drop_chances:{head:0f,chest:0f,legs:0f,feet:0f,mainhand:0f,offhand:0f},Passengers:[{id:"minecraft:item_display",Tags:["sealed_statue.model","mob_model"],item:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:item_model":"tm_rpg:mob/sealed_statue/walk1"}},item_display:"head",teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1.25f,0f],scale:[1f,1f,1f]}}],IsBaby:0b}
# ステータス（enemy/enemy_set_status が storage tm_rpg:enemy_status data から読む）
data modify storage tm_rpg:enemy_status data set value {Lv:1,HP:1000,HP_MAX:1000,hp_rege:10,MP:1000,MP_MAX:1000,mp_rege:10,armor:10,magic_armor:10,p_attack:10,m_attack:10,cooltime:10,sustain_time:10,sustain_power:10,crit_per:10,crit_damage:5,job_bonus:1000,evasin:0,luck:1000}
# 召喚した1体の初期化
execute as @e[type=minecraft:husk,tag=new_mob,distance=..2,limit=1] at @s run function tm_rpg:enemy/mob/sealed_statue/init
