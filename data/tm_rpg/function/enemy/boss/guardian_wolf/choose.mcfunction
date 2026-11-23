#> tm_rpg:enemy/boss/guardian_wolf/choose

# 次の行動を選ぶ。guardian_wolf/move/idle から呼ばれる
# @s ＝ マスター
scoreboard players set @s boss_t 0
scoreboard players set @s boss_walk 0
# 形態の切り替えで決まった行動
execute if score @s boss_force matches 1.. run scoreboard players operation @s boss_move = @s boss_force
execute if score @s boss_force matches 1.. run return run scoreboard players set @s boss_force 0
# プレイヤーとの距離とクールタイムで使える行動だけを集め、重みでランダムに1つ選ぶ（無ければ、もう一度待機）
scoreboard players set #sum boss_tmp 0
execute unless score @s boss_cd2 matches 1.. at @s if entity @a[gamemode=!spectator,distance=..16] run scoreboard players add #sum boss_tmp 10
execute unless score @s boss_cd3 matches 1.. at @s if entity @a[gamemode=!spectator,distance=6..30] run scoreboard players add #sum boss_tmp 10
execute unless score @s boss_cd4 matches 1.. at @s if entity @a[gamemode=!spectator,distance=..16] run scoreboard players add #sum boss_tmp 10
execute unless score @s boss_cd5 matches 1.. at @s if entity @a[gamemode=!spectator,distance=6..30] run scoreboard players add #sum boss_tmp 10
execute unless score @s boss_cd6 matches 1.. run scoreboard players add #sum boss_tmp 5
execute if score #sum boss_tmp matches ..0 run return 0
execute store result score #roll boss_tmp run random value 0..2147483646
scoreboard players operation #roll boss_tmp %= #sum boss_tmp
scoreboard players set #pick boss_tmp 0
# 2: swipe
execute if score #pick boss_tmp matches 0 unless score @s boss_cd2 matches 1.. at @s if entity @a[gamemode=!spectator,distance=..16] if score #roll boss_tmp matches ..9 run scoreboard players set #pick boss_tmp 2
execute if score #pick boss_tmp matches 0 unless score @s boss_cd2 matches 1.. at @s if entity @a[gamemode=!spectator,distance=..16] run scoreboard players remove #roll boss_tmp 10
# 3: dash
execute if score #pick boss_tmp matches 0 unless score @s boss_cd3 matches 1.. at @s if entity @a[gamemode=!spectator,distance=6..30] if score #roll boss_tmp matches ..9 run scoreboard players set #pick boss_tmp 3
execute if score #pick boss_tmp matches 0 unless score @s boss_cd3 matches 1.. at @s if entity @a[gamemode=!spectator,distance=6..30] run scoreboard players remove #roll boss_tmp 10
# 4: spin
execute if score #pick boss_tmp matches 0 unless score @s boss_cd4 matches 1.. at @s if entity @a[gamemode=!spectator,distance=..16] if score #roll boss_tmp matches ..9 run scoreboard players set #pick boss_tmp 4
execute if score #pick boss_tmp matches 0 unless score @s boss_cd4 matches 1.. at @s if entity @a[gamemode=!spectator,distance=..16] run scoreboard players remove #roll boss_tmp 10
# 5: leap
execute if score #pick boss_tmp matches 0 unless score @s boss_cd5 matches 1.. at @s if entity @a[gamemode=!spectator,distance=6..30] if score #roll boss_tmp matches ..9 run scoreboard players set #pick boss_tmp 5
execute if score #pick boss_tmp matches 0 unless score @s boss_cd5 matches 1.. at @s if entity @a[gamemode=!spectator,distance=6..30] run scoreboard players remove #roll boss_tmp 10
# 6: roar
execute if score #pick boss_tmp matches 0 unless score @s boss_cd6 matches 1.. if score #roll boss_tmp matches ..4 run scoreboard players set #pick boss_tmp 6
execute if score #pick boss_tmp matches 0 unless score @s boss_cd6 matches 1.. run scoreboard players remove #roll boss_tmp 5
execute if score #pick boss_tmp matches 2.. run scoreboard players operation @s boss_move = #pick boss_tmp
execute if score #pick boss_tmp matches 2 run scoreboard players set @s boss_cd2 60
execute if score #pick boss_tmp matches 3 run scoreboard players set @s boss_cd3 80
execute if score #pick boss_tmp matches 4 run scoreboard players set @s boss_cd4 60
execute if score #pick boss_tmp matches 5 run scoreboard players set @s boss_cd5 80
execute if score #pick boss_tmp matches 6 run scoreboard players set @s boss_cd6 200
