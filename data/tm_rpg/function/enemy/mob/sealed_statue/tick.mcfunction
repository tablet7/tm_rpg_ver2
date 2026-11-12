#> tm_rpg:enemy/mob/sealed_statue/tick

# sealed_statue 1体ぶんの毎tick処理。tm_rpg:enemy/main から呼ばれる
# @s ＝ モブ（実行位置と向きもモブ）

# 見た目（item_display）の向きをモブに合わせる。乗っているだけでは向きが付いてこないため
execute on passengers run rotate @s[type=minecraft:item_display] ~ 0
# 歩いていないときは立ち姿で止める（横の速さが 0.5 ブロック/秒 未満。predicate tm_rpg:mob/walking）
execute unless predicate tm_rpg:mob/walking run return run function tm_rpg:enemy/mob/sealed_statue/idle
tag @s remove mob_idle
# アニメーション: 4tick ごとにモデルを差し替える（差し替えるtickだけコマンドが走る）
scoreboard players add @s mob_anim 1
execute if score @s mob_anim matches 4 on passengers run data modify entity @s[type=minecraft:item_display] item.components."minecraft:item_model" set value "tm_rpg:mob/sealed_statue/walk2"
execute if score @s mob_anim matches 8 on passengers run data modify entity @s[type=minecraft:item_display] item.components."minecraft:item_model" set value "tm_rpg:mob/sealed_statue/walk3"
execute if score @s mob_anim matches 12 on passengers run data modify entity @s[type=minecraft:item_display] item.components."minecraft:item_model" set value "tm_rpg:mob/sealed_statue/walk4"
execute if score @s mob_anim matches 16.. on passengers run data modify entity @s[type=minecraft:item_display] item.components."minecraft:item_model" set value "tm_rpg:mob/sealed_statue/walk1"
execute if score @s mob_anim matches 16.. run scoreboard players set @s mob_anim 0
