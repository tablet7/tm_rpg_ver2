#> tm_rpg:enemy/boss/crawler/hurt

# 殴られた部位の処理。crawler/hurt_check から呼ばれる
# @s ＝ 殴られた部位

# 減った分を本体（core）の hp に移す
scoreboard players operation #dmg boss_tmp = @s boss_hp_last
scoreboard players operation #dmg boss_tmp -= @s hp
execute if entity @s[tag=!crawler.core] run scoreboard players operation @e[type=#tm_rpg:crawler_part,tag=crawler.core,distance=..48,limit=1] hp -= #dmg boss_tmp
data modify entity @s equipment.head.components."minecraft:dyed_color" set value 14370384
scoreboard players set @s boss_flash 5
playsound minecraft:entity.zombie.hurt hostile @a ~ ~ ~ 1 1
