#> tm_rpg:enemy/boss/guardian_wolf/part_init

# 召喚直後の当たり判定の初期化。guardian_wolf/summon から呼ばれる
# @s ＝ 当たり判定（Mob）

scoreboard players operation @s boss_hp_last = @s hp
execute if entity @s[tag=!guardian_wolf.core] on passengers run kill @s[type=minecraft:text_display]
