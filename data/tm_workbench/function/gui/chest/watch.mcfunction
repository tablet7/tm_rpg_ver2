#> tm_workbench:gui/chest/watch

# トロッコを開いているあいだ、画面の物（岩盤）の数を見る。gui/tick から毎 tick 呼ばれる（tag gui_cart_open の人だけ）
# 数がトロッコの gui_n（画面の物の数。gen/chest/s<画面>/enter が入れる）と違うときだけ、gen/chest/check で調べて直す（ボタンを押した・埋め草を取った・プレイヤーの物と入れ替えた）
# 押されたボタンは #act gui_tmp に入るので、プレイヤーに戻ってから gen/act_run で振り分ける
# 画面ごとの毎 tick の処理（screens.json の tick）は gen/chest/tick
# @s ＝ プレイヤー（at @s）

scoreboard players set #act gui_tmp 0
scoreboard players operation #me gui_tmp = @s ent_id
execute as @e[type=chest_minecart,tag=gui_cart,distance=..8] if score @s gui_owner = #me gui_tmp run tag @s add gui_mine
scoreboard players set #gui gui_tmp -1
execute as @e[type=chest_minecart,tag=gui_mine,distance=..8,limit=1] store result score #gui gui_tmp if items entity @s container.* minecraft:bedrock
execute as @e[type=chest_minecart,tag=gui_mine,distance=..8,limit=1] unless score #gui gui_tmp = @s gui_n run function tm_workbench:gen/chest/check
# 画面ごとの毎 tick の処理（screens.json の tick。鍛冶台は置く場所の物が変わったかを見る）
execute as @e[type=chest_minecart,tag=gui_mine,distance=..8,limit=1] run function tm_workbench:gen/chest/tick
tag @e[type=chest_minecart,tag=gui_mine,distance=..8] remove gui_mine
execute if score #act gui_tmp matches 1.. run function tm_workbench:gen/act_run
