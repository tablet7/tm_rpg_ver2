#> tm_rpg:enemy/mob/sealed_statue/idle

# 歩いていないときに tick から呼ばれ、見た目を立ち姿（walk2）に固定する
# 差し替えは止まった最初の1tickだけ行い、止まっている間は何もしない（mob_idle タグで判定）
# @s ＝ モブ

execute if entity @s[tag=mob_idle] run return 0
tag @s add mob_idle
execute on passengers run data modify entity @s[type=minecraft:item_display] item.components."minecraft:item_model" set value "tm_rpg:mob/sealed_statue/walk2"
# 歩き出したら2tick後に walk3 から再開する
scoreboard players set @s mob_anim 5
