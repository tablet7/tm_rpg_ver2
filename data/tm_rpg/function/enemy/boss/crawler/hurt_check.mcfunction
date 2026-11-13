#> tm_rpg:enemy/boss/crawler/hurt_check

# 殴れる部位の被弾チェック。crawler/part_tick から呼ばれる
# tm_rpg のダメージ処理（damage_ex/damage_dealt）が減らした hp を、前のtickの値と比べる（NBT は読まない）
# @s ＝ 部位

execute if score @s hp < @s boss_hp_last run function tm_rpg:enemy/boss/crawler/hurt
# HP集約: 本体以外の hp は毎tick元に戻す（減った分は hurt で本体へ移してある）。本体は今の hp を記録する
execute if entity @s[tag=!crawler.core] run scoreboard players operation @s hp = @s boss_hp_last
execute if entity @s[tag=crawler.core] run scoreboard players operation @s boss_hp_last = @s hp
# 赤フラッシュを数tickで戻す
execute if score @s boss_flash matches 1.. run scoreboard players remove @s boss_flash 1
execute if score @s boss_flash matches 0 run data modify entity @s equipment.head.components."minecraft:dyed_color" set value 16777215
execute if score @s boss_flash matches 0 run scoreboard players set @s boss_flash -1
