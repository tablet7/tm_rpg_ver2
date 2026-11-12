#> tm_rpg:enemy/summon/test/move_test_enemy

# テスト用の動く敵（スケルトン）を実行位置に召喚する関数（マクロなし）
# 使い方: execute positioned <x> <y> <z> run function tm_rpg:enemy/summon/test/move_test_enemy

summon skeleton ~ ~ ~ {\
    Silent:1b,\
    CustomNameVisible:1b,\
    DeathLootTable:"tm_rpg:entity/empty",\
    Team:"Enemy",\
    NoAI:0b,\
    Health:1000f,\
    Tags:["test","enemy","new_mob","mob","hitdamage"],\
    CustomName:"Enemy team",\
    equipment:{head:{id:"minecraft:tnt",count:1}},\
    drop_chances:{head:0f,chest:0f,legs:0f,feet:0f,mainhand:0f,offhand:0f,body:0f,saddle:0f},\
    attributes:[{id:"minecraft:max_health",base:1000}]\
}

# ステータス（enemy/enemy_set_status が storage tm_rpg:enemy_status data から読む）
data modify storage tm_rpg:enemy_status data set value \
{Lv:1,HP:1000,HP_MAX:1000,hp_rege:10,\
MP:1000,MP_MAX:1000,mp_rege:10,\
armor:10,magic_armor:10,\
p_attack:10,m_attack:10,\
cooltime:10,\
sustain_time:10,sustain_power:10,\
crit_per:10,crit_damage:5,\
job_bonus:1000,evasin:0,luck:1000}

# 武器（enemy_set_status で new_mob タグが外れるので、先に持たせる）
execute as @e[tag=new_mob,limit=1] run loot replace entity @s weapon.mainhand loot tm_rpg:item/weapon/test_weapon

execute as @e[tag=new_mob,limit=1] at @s run function tm_rpg:enemy/enemy_set_status
