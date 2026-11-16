#> tm_rpg:enemy/skill/warn/fire

# 予兆の時間が終わったときに、敵にスキルを使わせる。enemy/skill/warn/tick から呼ばれる
# タイマー（tag warn_firing の marker）の tag warn_do_<スキル> を見て、使うスキルを選ぶ（関数名を変えるためのマクロを使わない）
# 予兆を付けるスキルを増やしたら、ここに1行足す
# @s ＝ 技を使う敵（実行位置・向き ＝ 予兆を出したときの場所・向き）

execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_fly_slash,limit=1] run return run function tm_rpg:enemy/skill/warn_fly_slash
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test_laser,limit=1] run return run function tm_rpg:enemy/skill/warn_test_laser
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test_sword_rain,limit=1] run return run function tm_rpg:enemy/skill/warn_test_sword_rain
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test_sword_volley,limit=1] run return run function tm_rpg:enemy/skill/warn_test_sword_volley
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test_push,limit=1] run return run function tm_rpg:enemy/skill/warn_test_push
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test,limit=1] run return run function tm_rpg:enemy/skill/warn_test
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test_obj,limit=1] run return run function tm_rpg:enemy/skill/warn_test_obj
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test_obj_repeat,limit=1] run return run function tm_rpg:enemy/skill/warn_test_obj_repeat
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test_obj_line,limit=1] run return run function tm_rpg:enemy/skill/warn_test_obj_line
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test_laser_sweep,limit=1] run return run function tm_rpg:enemy/skill/warn_test_laser_sweep
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test_laser_circle,limit=1] run return run function tm_rpg:enemy/skill/warn_test_laser_circle
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_test_laser_twin,limit=1] run return run function tm_rpg:enemy/skill/warn_test_laser_twin
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_ice_breath,limit=1] run return run function tm_rpg:enemy/skill/warn_ice_breath
execute if entity @e[type=minecraft:marker,tag=warn_firing,tag=warn_do_fire_dash,limit=1] run return run function tm_rpg:enemy/skill/warn_fire_dash
