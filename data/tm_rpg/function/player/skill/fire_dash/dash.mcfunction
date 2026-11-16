#> tm_rpg:player/skill/fire_dash/dash

# スキル「炎の突進」の突進。プレイヤーは skill3（溜めのあと）から、敵は fire（予兆のあと）から呼ばれる
# 前へ速度を加え（プレイヤー: player/dash/impulse、敵: enemy/skill/move/impulse）、体のまわりの当たり判定（skill4）を出す
# 速さ: 前 1.25・上 0.2 ブロック/tick。平らな地面で約 7 マス進む計算（摩擦・坂・敵の種類で変わる。ゲーム内で合わせる）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 突進する向き。横の向きだけ使う）

# 速さ（0.01 ブロック/tick 単位）。dash_x 右+ / dash_y 上+ / dash_z 前+
scoreboard players set @s dash_x 0
scoreboard players set @s dash_y 20
scoreboard players set @s dash_z 125
execute if entity @s[type=minecraft:player] run function tm_rpg:player/dash/impulse
execute if entity @s[type=!minecraft:player] run function tm_rpg:enemy/skill/move/impulse

# 当たり判定（体の真ん中の高さ。毎 tick 使った人に付いて行く）
execute positioned ~ ~1 ~ summon minecraft:marker run function tm_rpg:player/skill/fire_dash/skill4
