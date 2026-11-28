#> tm_workbench:mat/drop/start

# 倒した敵の素材を、受け取る人（tag item_drop.receiver のプレイヤー）全員のスコアに直接足す
# tm_rpg:enemy/death_main から、受け取る人に tag を付けたあとに呼ばれる（tag はここでは外さない）
# @s ＝ 倒した敵（スコア mat_family・mat_table・Lv を読む）
# 説明: md/gui_md/materials.md「敵の落とし物」

# 系統か表が無い敵（ボス・書いていない敵）は落とさない
execute unless score @s mat_family matches 1..4 run return 0
execute unless score @s mat_table matches 1..4 run return 0

scoreboard players operation #mat_fam gui_tmp = @s mat_family
scoreboard players operation #mat_table gui_tmp = @s mat_table
scoreboard players set #mat_lv gui_tmp 1
execute if score @s Lv matches 1.. run scoreboard players operation #mat_lv gui_tmp = @s Lv

execute as @a[tag=item_drop.receiver] run function tm_workbench:mat/drop/player
