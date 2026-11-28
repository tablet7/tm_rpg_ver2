#> tm_rpg:system/stutas/hp_ratio_watch

# HPバー（text_display）の表示と、最大体力（max_health）をHPの割合（hp_ratio）に合わせて設定する関数（マクロなし）
# player/main、enemy/main から、hp_ratio が前回（hp_ratio_old）から変わったときだけ呼ばれる
# 最大体力の値は 1〜20（hp_ratio が 0 以下なら 1、21 以上なら 20）
# @s ＝ プレイヤーまたは敵

# 今回の値を記録（次の tick で変化を判定するため）
scoreboard players operation @s hp_ratio_old = @s hp_ratio

# HPバーの表示（system/hp_text_update に割合を #hpbar_ratio temp で渡す）
# 敵のHPバーは敵に乗っている（enemy_set_status の ride）ので乗客からたどる。
# プレイヤーのHPバーはプレイヤーに乗せられない（player/main が毎 tick tp で動かす）ので、ent_id が同じ物を探す
scoreboard players operation #hpbar_ratio temp = @s hp_ratio
execute unless entity @s[type=minecraft:player] on passengers if entity @s[type=minecraft:text_display,tag=mount_text] run function tm_rpg:system/hp_text_update
scoreboard players operation #hpbar_id temp = @s ent_id
execute if entity @s[type=minecraft:player] as @e[type=minecraft:text_display,tag=mount_text] if score @s ent_id = #hpbar_id temp run function tm_rpg:system/hp_text_update

execute if score @s hp_ratio matches ..1 run return run attribute @s minecraft:max_health base set 1
execute if score @s hp_ratio matches 2 run return run attribute @s minecraft:max_health base set 2
execute if score @s hp_ratio matches 3 run return run attribute @s minecraft:max_health base set 3
execute if score @s hp_ratio matches 4 run return run attribute @s minecraft:max_health base set 4
execute if score @s hp_ratio matches 5 run return run attribute @s minecraft:max_health base set 5
execute if score @s hp_ratio matches 6 run return run attribute @s minecraft:max_health base set 6
execute if score @s hp_ratio matches 7 run return run attribute @s minecraft:max_health base set 7
execute if score @s hp_ratio matches 8 run return run attribute @s minecraft:max_health base set 8
execute if score @s hp_ratio matches 9 run return run attribute @s minecraft:max_health base set 9
execute if score @s hp_ratio matches 10 run return run attribute @s minecraft:max_health base set 10
execute if score @s hp_ratio matches 11 run return run attribute @s minecraft:max_health base set 11
execute if score @s hp_ratio matches 12 run return run attribute @s minecraft:max_health base set 12
execute if score @s hp_ratio matches 13 run return run attribute @s minecraft:max_health base set 13
execute if score @s hp_ratio matches 14 run return run attribute @s minecraft:max_health base set 14
execute if score @s hp_ratio matches 15 run return run attribute @s minecraft:max_health base set 15
execute if score @s hp_ratio matches 16 run return run attribute @s minecraft:max_health base set 16
execute if score @s hp_ratio matches 17 run return run attribute @s minecraft:max_health base set 17
execute if score @s hp_ratio matches 18 run return run attribute @s minecraft:max_health base set 18
execute if score @s hp_ratio matches 19 run return run attribute @s minecraft:max_health base set 19
execute if score @s hp_ratio matches 20.. run attribute @s minecraft:max_health base set 20
