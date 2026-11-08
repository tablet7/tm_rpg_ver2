#> tm_rpg:system/_2second

# 2秒ごとに実行される処理。tm_rpg:main から呼ばれる
# 2秒カウンターを0に戻し、全プレイヤーの player/2second を実行する

# system
scoreboard players set System 2tick 0

# main
execute as @a at @s run function tm_rpg:player/2second
