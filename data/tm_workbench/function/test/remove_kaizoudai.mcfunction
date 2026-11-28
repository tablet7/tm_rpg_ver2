#> tm_workbench:test/remove_kaizoudai

# 古い改造台（ドロッパー＋marker。2026-11-28 に tm_rpg から関数を消した）を、ワールドから片付ける関数。一度だけ手で実行する
# 使い方: 改造台の近く（読み込まれている範囲）で /function tm_workbench:test/remove_kaizoudai
# 読み込まれていない場所の marker は見つからないので、改造台を置いた場所ごとに近くで実行する。消した数をチャットに出す
# ドロッパーは destroy で壊すので、中に残っていた物と、ドロッパー自体がその場に落ちる

scoreboard players set #n gui_tmp 0
execute as @e[type=marker,tag=kaizoudai] at @s run scoreboard players add #n gui_tmp 1
execute as @e[type=marker,tag=kaizoudai] at @s if block ~ ~ ~ minecraft:dropper run setblock ~ ~ ~ minecraft:air destroy
kill @e[type=marker,tag=kaizoudai]
tellraw @s [{"text": "[片付け] 古い改造台を ", "color": "aqua"}, {"score": {"name": "#n", "objective": "gui_tmp"}, "color": "white"}, {"text": " 個消しました（読み込まれている範囲だけ）", "color": "aqua"}]

# 改造台が使っていたスコア・タグ・storage（一度消せば、tm_rpg:reload ではもう作られない）
scoreboard objectives remove kaizou_open
scoreboard objectives remove kaizou_user
scoreboard objectives remove kaizou_time
scoreboard objectives remove kaizou_rot_x
scoreboard objectives remove kaizou_rot_y
scoreboard players reset #kaizou_lv item_roll
scoreboard players reset #kaizou_count item_roll
scoreboard players reset #kaizou_facing temp
scoreboard players reset #kaizou_ray temp
scoreboard players reset #kaizou_user temp
scoreboard players reset #kaizou_rot_x temp
scoreboard players reset #kaizou_rot_y temp
tag @a remove kaizou_this
tag @a remove kaizou_opener
data remove storage tm_rpg:kaizou item
data remove storage tm_rpg:kaizou items
