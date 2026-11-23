#> tm_rpg:enemy/boss/guardian_wolf/hook/periodic

# 定期の雷を、48 マス以内のプレイヤー1人に1発ずつ落とす。hook/tick から 5 秒ごとに 3 回（5 tick ずつずらして）呼ばれ、1人に 3 発になる
# 48 マス ＝ ボスが消えずにいる範囲（リグの range）。戦っている人全員に落ちる
# @s ＝ マスター（at @s）

scoreboard players set #gw_range temp 3
execute as @a[tag=mob,gamemode=!spectator,distance=..48] at @s run function tm_rpg:enemy/boss/guardian_wolf/hook/periodic_one
