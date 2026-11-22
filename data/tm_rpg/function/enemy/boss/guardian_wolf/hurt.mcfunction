#> tm_rpg:enemy/boss/guardian_wolf/hurt

# 殴られた当たり判定の処理。guardian_wolf/hurt_check から呼ばれる
# @s ＝ 殴られた当たり判定

# 本体以外: 減った分を本体（core）の hp に移す。このtickに本体を先に読んでいても合うように #core_hp からも引く
scoreboard players operation #dmg boss_tmp = @s boss_hp_last
scoreboard players operation #dmg boss_tmp -= @s hp
execute if entity @s[tag=!guardian_wolf.core] run scoreboard players operation @e[type=#tm_rpg:guardian_wolf_part,tag=guardian_wolf.core,distance=..48,limit=1] hp -= #dmg boss_tmp
execute if entity @s[tag=!guardian_wolf.core] run scoreboard players operation #core_hp boss_tmp -= #dmg boss_tmp
# 全身を赤くする合図（マスターが次のtickに flash を 6 にする）
scoreboard players set #hurt boss_tmp 1
playsound minecraft:entity.wolf_big.hurt hostile @a ~ ~ ~ 1 1
