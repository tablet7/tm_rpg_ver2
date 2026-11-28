#> tm_workbench:gui/uuid

# プレイヤーの UUID（int 4 つ）をスコア gui_u0〜gui_u3 に入れる。gui/chest/summon から、まだ入っていない人だけ呼ばれる
# プレイヤーの NBT を読むのは重いので、1人1回だけ（UUID は変わらない）
# @s ＝ プレイヤー

execute store result score @s gui_u0 run data get entity @s UUID[0]
execute store result score @s gui_u1 run data get entity @s UUID[1]
execute store result score @s gui_u2 run data get entity @s UUID[2]
execute store result score @s gui_u3 run data get entity @s UUID[3]
