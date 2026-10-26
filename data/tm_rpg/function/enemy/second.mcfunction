# tm_rpg:enemy/second

# 状態異常管理
function tm_rpg:system/abnormal/second

# 燃えていなかったら燃やす
execute store result score @s real_fire_time run data get entity @s Fire
execute if score @s burn_time matches 1.. if score @s real_fire_time matches ..0 run data merge entity @s {Fire:20}