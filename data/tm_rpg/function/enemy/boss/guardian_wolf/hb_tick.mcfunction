#> tm_rpg:enemy/boss/guardian_wolf/hb_tick

# 当たり判定（Mob）1体の毎tick処理。guardian_wolf/part_tick から呼ばれる
# @s ＝ 当たり判定。実行位置と向きはマスターのもの

# 位置（当たり判定ごとの関数）
execute if entity @s[tag=guardian_wolf.hb.body] run function tm_rpg:enemy/boss/guardian_wolf/hb/body
execute if entity @s[tag=guardian_wolf.hb.head] run function tm_rpg:enemy/boss/guardian_wolf/hb/head
execute if entity @s[tag=guardian_wolf.hb.arm_r] run function tm_rpg:enemy/boss/guardian_wolf/hb/arm_r
execute if entity @s[tag=guardian_wolf.hb.arm_l] run function tm_rpg:enemy/boss/guardian_wolf/hb/arm_l
execute if entity @s[tag=guardian_wolf.hb.tail] run function tm_rpg:enemy/boss/guardian_wolf/hb/tail
# 本体: いる印・hp・最大 hp を写す（形態の判定と、撃破か消えたかの判定に使う）
execute if entity @s[tag=guardian_wolf.core] run scoreboard players set #core boss_tmp 1
execute if entity @s[tag=guardian_wolf.core] run scoreboard players operation #core_hp boss_tmp = @s hp
execute if entity @s[tag=guardian_wolf.core] run scoreboard players operation #core_max boss_tmp = @s HP_MAX
# 被弾の検知
function tm_rpg:enemy/boss/guardian_wolf/hurt_check
