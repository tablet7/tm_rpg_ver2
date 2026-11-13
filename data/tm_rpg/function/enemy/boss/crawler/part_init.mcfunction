#> tm_rpg:enemy/boss/crawler/part_init

# 召喚直後の部位の初期化。crawler/summon から呼ばれる
# @s ＝ 部位

scoreboard players set @s boss_flash -1
scoreboard players operation @s[tag=crawler.part] boss_hp_last = @s hp
execute if entity @s[tag=crawler.part,tag=!crawler.core] on passengers run kill @s[type=minecraft:text_display]
