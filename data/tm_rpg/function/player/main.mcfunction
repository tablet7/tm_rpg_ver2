#> function tm_rpg:player/main

# first_login
execute if entity @s[tag=!joined] run function tm_rpg:player/first_reload

# HP,MP,Armorなどの変動
function tm_rpg:system/stutas/hendou_main

# hp変動
scoreboard players operation @s hp_ratio = @s hp
scoreboard players operation @s hp_ratio *= System CONTACT_20
scoreboard players operation @s hp_ratio /= @s HP_MAX
execute store result storage tm_rpg:data_player hp int 1 run scoreboard players get @s hp_ratio
function tm_rpg:system/stutas/hp_ratio_watch with storage tm_rpg:data_player

#actionbar表示
execute as @s[tag=!sorcerer] at @s run title @s actionbar [\
{"text":"HP "},{"score":{"name":"@s","objective":"hp"},"color":"red"},{"text":"/"},{"score":{"name":"@s","objective":"HP_MAX"},"color":"red"},\
{"text":"　MP "},{"score":{"name":"@s","objective":"mp"},"color":"blue"},{"text":"/"},{"score":{"name":"@s","objective":"MP_MAX"},"color":"blue"},\
{"text":"　スキル1 "},{"score":{"name":"@s","objective":"skill1_recast"},"color":"green"},\
{"text":"　スキル2 "},{"score":{"name":"@s","objective":"skill2_recast"},"color":"green"},\
{"text":"　スキル3 "},{"score":{"name":"@s","objective":"skill3_recast"},"color":"green"},\
{"text":"　スキル4 "},{"score":{"name":"@s","objective":"skill4_recast"},"color":"green"},\
{"text":"　スキル5 "},{"score":{"name":"@s","objective":"skill5_recast"},"color":"green"},\
{"text":"　スキル6 "},{"score":{"name":"@s","objective":"skill6_recast"},"color":"green"}]

# hp表示テキストのtp
scoreboard players operation System temp = @s ent_id
execute as @e[type=text_display,tag=mount_text] if score @s ent_id = System temp run tp @s ~ ~2.2 ~
execute as @e[type=text_display,tag=mount_text] if score @s ent_id = System temp run function tm_rpg:system/hp_text_update

# 死んだときの検知
execute as @s[scores={player_deaths=1..}] run function tm_rpg:player/death/on_death
scoreboard players set @s[scores={player_deaths=1..}] player_deaths 0

# playerの座標の記録
execute store result score @s x_pos run data get entity @s Pos[0] 100
execute store result score @s y_pos run data get entity @s Pos[1] 100
execute store result score @s z_pos run data get entity @s Pos[2] 100

scoreboard players set @s is_moving 0
execute unless score @s x_pos = @s old_x_pos run scoreboard players set @s is_moving 1
execute unless score @s y_pos = @s old_y_pos run scoreboard players set @s is_moving 1
execute unless score @s z_pos = @s old_z_pos run scoreboard players set @s is_moving 1

# playerが動いてないときの処理
execute if score @s is_moving matches 0 run function tm_rpg:player/no_move

scoreboard players operation @s old_x_pos = @s x_pos
scoreboard players operation @s old_y_pos = @s y_pos
scoreboard players operation @s old_z_pos = @s z_pos

# tag破壊(ノックバック用)
execute if score @s temp_victim_remove matches 0 run tag @s remove temp_victim
execute if score @s temp_victim_remove matches 0.. run scoreboard players remove @s temp_victim_remove 1

# 弓用
execute if score @s shot_bow_time matches 1.. run scoreboard players remove @s shot_bow_time 1
execute if score @s shot_bow matches 1.. run function tm_rpg:system/naguri/yumiya_enkyori

# 連続殴りを防ぐ
scoreboard players add @s attack_timer 1

