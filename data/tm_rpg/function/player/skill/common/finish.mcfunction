#> tm_rpg:player/skill/common/finish

# スキルが成功したときに player/skill/start から呼ばれる。スキル枠（skillselect_skillcool）のクールタイムを設定し、MP を減らす
# クールタイム = アイテムの cooltime − プレイヤーの cooltime（最低 1 秒）。recast は player/seconds で1秒ずつ減る
# @s ＝ プレイヤー

# クールタイム
scoreboard players operation @s skillselect_cooltime -= @s cooltime
execute if score @s skillselect_cooltime matches ..0 run scoreboard players set @s skillselect_cooltime 1

execute if score @s skillselect_skillcool matches 1 run scoreboard players operation @s skill1_recast = @s skillselect_cooltime
execute if score @s skillselect_skillcool matches 2 run scoreboard players operation @s skill2_recast = @s skillselect_cooltime
execute if score @s skillselect_skillcool matches 3 run scoreboard players operation @s skill3_recast = @s skillselect_cooltime
execute if score @s skillselect_skillcool matches 4 run scoreboard players operation @s skill4_recast = @s skillselect_cooltime
execute if score @s skillselect_skillcool matches 5 run scoreboard players operation @s skill5_recast = @s skillselect_cooltime
execute if score @s skillselect_skillcool matches 6 run scoreboard players operation @s skill6_recast = @s skillselect_cooltime

# MP消費
scoreboard players operation @s mp -= @s skillselect_mp
