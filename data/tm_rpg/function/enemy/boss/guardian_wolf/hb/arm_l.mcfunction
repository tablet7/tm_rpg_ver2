#> tm_rpg:enemy/boss/guardian_wolf/hb/arm_l

# 当たり判定 arm_l の位置（マスターから [左, 上, 前]）。guardian_wolf/hb_tick から呼ばれる
# @s ＝ 当たり判定

execute if score #move boss_tmp matches 2 run return run function tm_rpg:enemy/boss/guardian_wolf/move/swipe/hb_arm_l
execute if score #move boss_tmp matches 3 run return run function tm_rpg:enemy/boss/guardian_wolf/move/dash/hb_arm_l
execute if score #move boss_tmp matches 4 run return run function tm_rpg:enemy/boss/guardian_wolf/move/spin/hb_arm_l
execute if score #move boss_tmp matches 5 run return run function tm_rpg:enemy/boss/guardian_wolf/move/leap/hb_arm_l
execute if score #move boss_tmp matches 6 run return run function tm_rpg:enemy/boss/guardian_wolf/move/roar/hb_arm_l
# 休みの姿勢の位置
teleport @s ^1.6 ^0.1 ^2.4
