#> tm_workbench:kaji/conv/grade

# 素材の変換: 選んだ系統の段階 #cvg kaji_tmp を 1 つ下の段階に変える（kaji/conv/do から。あとで表示を直す）
# 表示を作ったあとに素材の数が変わっていても（敵の落とし物など）、今の数で計算し直して判断する
# 「全部」は 2 回押し: 1 回目は確認待ち（kaji_cvconf ＝ 段階、kaji_cvtime ＝ 切れる gametime）にするだけ。5 秒以内に同じ段階をもう一度押すと変換する
# @s ＝ トロッコ（持ち主に tag kaji_user）

scoreboard players operation #cvfam kaji_tmp = @s kaji_cvfam
scoreboard players operation #cvmode kaji_tmp = @s kaji_cvmode
execute as @a[tag=kaji_user,limit=1] run function tm_workbench:gen/kaji/conv_have
function tm_workbench:gen/kaji/conv_calc
function tm_workbench:gen/kaji/conv_pick

# 足りない（全部で 0 個のときも）
execute if score #cvok kaji_tmp matches 0 run scoreboard players set @s kaji_cvconf 0
execute if score #cvok kaji_tmp matches 0 as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score #cvok kaji_tmp matches 0 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 素材が足りません（赤い数字の物）", "color": "red"}

# 全部: 確認待ちでなければ、確認待ちにして止める（#now temp ＝ 今の gametime。tm_rpg:main が入れる）
scoreboard players set #cvyes kaji_tmp 0
execute if score @s kaji_cvconf = #cvg kaji_tmp if score #now temp <= @s kaji_cvtime run scoreboard players set #cvyes kaji_tmp 1
execute if score #cvmode kaji_tmp matches 5 if score #cvyes kaji_tmp matches 0 run return run function tm_workbench:kaji/conv/ask

# 変換する（手数料なし）
scoreboard players set @s kaji_cvconf 0
execute as @a[tag=kaji_user,limit=1] run function tm_workbench:gen/kaji/conv_do
execute as @a[tag=kaji_user,limit=1] run function tm_workbench:gen/kaji/conv_msg
execute as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:ui.stonecutter.take_result master @s ~ ~ ~ 1 1
