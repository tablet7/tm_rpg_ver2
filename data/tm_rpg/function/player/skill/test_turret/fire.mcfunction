#> tm_rpg:player/skill/test_turret/fire

# スキル「testタレット」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/test_turret から呼ばれる（置くときは予兆なし）
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

# 1つだけ: 自分の古いタレットを消す（新しいのを出す前に。あとで消すと新しいのも消える）
execute as @e[type=minecraft:item_display,tag=test_turret] if score @s summon_ent_id = #skill_owner temp run kill @s

# 置いておく tick ＝（15 ＋ 持続時間）秒 × 20（store の倍率 20 で tick にする。持続時間が無ければ 15 秒）
scoreboard players set #turret_time temp 15
scoreboard players operation #turret_time temp += @s sustain_time
execute store result storage tm_rpg:damage kill_time int 20 run scoreboard players get #turret_time temp

# 前方2マスに、足元の高さ（マスの中心）で出す。skill2 が地面の高さに合わせる
execute rotated ~ 0 positioned ^ ^ ^2 align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:item_display run function tm_rpg:player/skill/test_turret/skill2
