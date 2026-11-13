#> tm_rpg:player/used_carrot_on_a_stick_skill

# tm_rpg:player/main から、ニンジン付きの棒を右クリックしたとき（used_carrot_on_a_stick が 1 以上）に呼ばれる
# メインハンドのスキルアイテムの custom_data を読み、クールタイム・MP・Lv を満たせば player/skill/start を呼ぶ
# @s ＝ プレイヤー（at @s）

#スコアボードリセット
scoreboard players reset @s used_carrot_on_a_stick

# skill_check
scoreboard players set @s skill_on 0

data remove storage tm_rpg:skill item
data modify storage tm_rpg:skill item set from entity @s SelectedItem.components."minecraft:custom_data"

execute store result score @s skillselect_skillcool run data get storage tm_rpg:skill item.skillcool
execute store result score @s skillselect_cooltime run data get storage tm_rpg:skill item.cooltime
execute store result score @s skillselect_mp run data get storage tm_rpg:skill item.mp
execute store result score @s skillselect_lv run data get storage tm_rpg:skill item.lv
scoreboard players remove @s skillselect_lv 30
execute store result score @s skillselect_kihon run data get storage tm_rpg:skill item.kihon
execute store result score @s skillselect_per run data get storage tm_rpg:skill item.per
execute store result score @s skillselect_damage_type run data get storage tm_rpg:skill item.damage_type
execute store result score @s skillselect_sanshou_type run data get storage tm_rpg:skill item.sanshou_type

# クールタイム = 0 , mpが十分にある , lvが+30まで
execute if score @s skillselect_skillcool matches 1 if score @s skill1_recast matches 0 if score @s skillselect_mp <= @s mp if score @s skillselect_lv <= @s Lv run function tm_rpg:player/skill/start
execute if score @s skillselect_skillcool matches 2 if score @s skill2_recast matches 0 if score @s skillselect_mp <= @s mp if score @s skillselect_lv <= @s Lv run function tm_rpg:player/skill/start
execute if score @s skillselect_skillcool matches 3 if score @s skill3_recast matches 0 if score @s skillselect_mp <= @s mp if score @s skillselect_lv <= @s Lv run function tm_rpg:player/skill/start
execute if score @s skillselect_skillcool matches 4 if score @s skill4_recast matches 0 if score @s skillselect_mp <= @s mp if score @s skillselect_lv <= @s Lv run function tm_rpg:player/skill/start
execute if score @s skillselect_skillcool matches 5 if score @s skill5_recast matches 0 if score @s skillselect_mp <= @s mp if score @s skillselect_lv <= @s Lv run function tm_rpg:player/skill/start
execute if score @s skillselect_skillcool matches 6 if score @s skill6_recast matches 0 if score @s skillselect_mp <= @s mp if score @s skillselect_lv <= @s Lv run function tm_rpg:player/skill/start

# skillが発動できなかった場合鳴らす
execute if score @s skill_on matches 0 run playsound block.dispenser.fail master @s ~ ~ ~

#{kihon:5,per:150,damage_type:1,sanshou_type:1