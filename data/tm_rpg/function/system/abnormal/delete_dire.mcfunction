#> tm_rpg:system/abnormal/delete_dire

# 火傷用に召喚したヴィンディケーター（tag=fire_ent_delete）を数tick後に削除する関数。tm_rpg:main から毎tick呼ばれる
# @s ＝ ヴィンディケーター

scoreboard players add @s kill_time 1
execute if score @s kill_time matches 5.. run tp @s 10 -100 10
execute if score @s kill_time matches 5.. run kill
