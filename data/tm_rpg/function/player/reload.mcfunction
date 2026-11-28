#> tm_rpg:player/reload

# プレイヤーの状態をリセットする関数。tm_rpg:reload、player/first_reload、player/death/on_respawn、player/main（2回目以降のログイン）から呼ばれる
# HP・MP・リキャスト・状態異常・敵にダメージを与えたときの印などを元に戻し、HPバー（text_display）を作り直す
# @s ＝ プレイヤー

effect give @s minecraft:instant_health infinite 10 true
effect give @s minecraft:saturation infinite 10 true
effect give @s minecraft:resistance infinite 10 true

# ステータスを組み立て直す（装備も読み直す）
scoreboard players set @s eq_dirty 1
scoreboard players set @s stat_dirty 1

scoreboard players operation @s hp = @s HP_MAX
scoreboard players operation @s mp = @s MP_MAX
scoreboard players set @s skill1_recast 0
scoreboard players set @s skill2_recast 0
scoreboard players set @s skill3_recast 0
scoreboard players set @s skill4_recast 0
scoreboard players set @s skill5_recast 0
scoreboard players set @s skill6_recast 0

# HUD（リングを使える状態に戻し、次の tick で組み立て直させる）
scoreboard players set @s skill1_cdmax 0
scoreboard players set @s skill2_cdmax 0
scoreboard players set @s skill3_cdmax 0
scoreboard players set @s skill4_cdmax 0
scoreboard players set @s skill5_cdmax 0
scoreboard players set @s skill6_cdmax 0
function tm_rpg:player/hud/ring
scoreboard players set @s hud_hold 0
scoreboard players reset @s hud_hp_old

function tm_rpg:system/abnormal/clear

scoreboard players set @s damage_dealt_pmc_p 0
scoreboard players set @s damage_dealt_pmc_m 0
scoreboard players set @s damage_dealt_pmc_c 0
scoreboard players set @s damage_dealt_per 100

scoreboard players set @s shot_bow_time 0

scoreboard players set @s ATTACK_TIMER_LEV 12
scoreboard players set @s attack_timer 0

# 最大体力（max_health）を次の tick で必ず設定し直す（hp_ratio_watch は値が変わったときだけ動くため）
scoreboard players reset @s hp_ratio_old

tag @s remove temp_victim
scoreboard players set @s temp_victim_remove 0

# 敵にダメージを与えたときの印（system/item_drop/hit_mark）を空にする
scoreboard players reset @s hit_mark_1
scoreboard players reset @s hit_mark_2
scoreboard players reset @s hit_mark_3
scoreboard players reset @s hit_mark_4
scoreboard players reset @s hit_mark_5
scoreboard players reset @s hit_mark_6
scoreboard players reset @s hit_mark_7
scoreboard players reset @s hit_mark_8
scoreboard players reset @s hit_mark_9
scoreboard players reset @s hit_mark_10
scoreboard players reset @s hit_mark_11
scoreboard players reset @s hit_mark_12
scoreboard players reset @s hit_mark_13
scoreboard players reset @s hit_mark_14
scoreboard players reset @s hit_mark_15
scoreboard players reset @s hit_mark_16
scoreboard players reset @s hit_mark_last
scoreboard players reset @s hit_mark_next

# バフを外す（スキル・ポーション）
function tm_rpg:system/buff/skill/reset
function tm_rpg:system/buff/potion/reset

tag @s add player_reload

# hp表示
execute as @e[type=text_display,tag=mount_text] at @s if score @s ent_id = @a[tag=player_reload,limit=1] ent_id run kill

# プレイヤーには乗せられない（/ride は Players can't be ridden で失敗する）ので、player/main が毎 tick tp で頭の上に動かす
summon text_display ~ ~ ~ {billboard:"center",Tags:["sub_text","mount_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[1f,1f,1f]},text:{"color":"green","text":"❚❚❚❚❚❚❚❚❚❚"},background:-2368549}
scoreboard players operation @e[type=text_display,tag=sub_text,limit=1] ent_id = @s ent_id
tag @e[type=text_display,tag=sub_text] remove sub_text


tag @s remove player_reload
