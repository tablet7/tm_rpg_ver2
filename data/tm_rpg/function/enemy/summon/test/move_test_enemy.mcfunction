#> tm_rpg:enemy/summon/test/move_test_enemy

# tm_rpg:enemy/summon/test/move_test_enemy {x:"~",y:"~",z:"~"}

$summon skeleton $(x) $(y) $(z) {\
    Silent:1b,\
    CustomNameVisible:1b,\
    DeathLootTable:"tm_rpg:entity/empty",\
    Team:"Enemy",\
    NoAI:0b,\
    Health:1000f,\
    Tags:["test","enemy","new_mob","mob"],\
    CustomName:"Enemy team",\
    equipment:{head:{id:"minecraft:tnt",count:1}},\
    drop_chances:{head:0.000},\
    attributes:[{id:"minecraft:max_health",base:1000}]\
}

execute as @e[tag=new_mob,limit=1] at @s run function tm_rpg:enemy/enemy_set_status \
{HP:1000,HP_MAX:1000,hp_rege:10,\
MP:1000,MP_MAX:1000,mp_rege:10,\
armor:10,magic_armor:10,\
p_attack:10,m_attack:10,\
cooltime:10,\
sustain_time:10,sustain_power:10,\
crit_per:10,crit_damage:5,\
job_bonus:1000,evasin:0,luck:1000,\
loot_weapon:"tm_rpg:item/weapon/test_weapon"}