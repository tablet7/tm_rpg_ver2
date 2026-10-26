# tm_rpg:enemy/main

# 殴られたとき 耐性MAXじゃないといけない
execute as @s[nbt={HurtTime:10s}] unless block ~ ~ ~ fire unless block ~ ~ ~ lava at @s run function tm_rpg:system/naguri/on_hurt_by

# hp変動
scoreboard players operation @s hp_ratio = @s hp
scoreboard players operation @s hp_ratio *= System CONTACT_20
scoreboard players operation @s hp_ratio /= @s HP_MAX
execute store result storage tm_rpg:data_enemy hp int 1 run scoreboard players get @s hp_ratio
function tm_rpg:system/stutas/hp_ratio_watch with storage tm_rpg:data_enemy

# hp表示テキストのtp
scoreboard players operation System temp = @s ent_id
execute as @e[type=text_display,tag=mount_text] if score @s ent_id = System temp run function tm_rpg:system/hp_text_update


# HP,MP,Armorなどの変動
function tm_rpg:system/stutas/hendou_main