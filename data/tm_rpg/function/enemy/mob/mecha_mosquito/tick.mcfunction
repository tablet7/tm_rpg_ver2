#> tm_rpg:enemy/mob/mecha_mosquito/tick

# mecha_mosquito 1体ぶんの毎tick処理。tm_rpg:enemy/main から呼ばれる
# @s ＝ モブ（実行位置と向きもモブ）

# アニメーション: 2tick ごとにモデルを差し替える（差し替えるtickだけコマンドが走る）
scoreboard players add @s mob_anim 1
execute if score @s mob_anim matches 2 run item replace entity @s armor.head with minecraft:white_stained_glass[minecraft:item_model="tm_rpg:mob/mecha_mosquito/fly2"]
execute if score @s mob_anim matches 4.. run item replace entity @s armor.head with minecraft:white_stained_glass[minecraft:item_model="tm_rpg:mob/mecha_mosquito/fly1"]
execute if score @s mob_anim matches 4.. run scoreboard players set @s mob_anim 0
