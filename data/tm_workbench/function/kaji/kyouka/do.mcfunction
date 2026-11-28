#> tm_workbench:kaji/kyouka/do

# 強化する。読み直す → 変わっていたら表示だけ直す → Lv の上限 → 素材と gold → 払う → 成功率で判定 → 成功なら Lv・強化回数 ＋1 と伸び
# kaji/kyouka/press から呼ばれる。@s ＝ トロッコ（持ち主に tag kaji_user）

function tm_workbench:kaji/recheck
execute if score #changed kaji_tmp matches 1 run function tm_workbench:kaji/refresh_in
execute if score #changed kaji_tmp matches 1 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 置いた物が変わったので、表示を直しました。もう一度押してください", "color": "yellow"}
execute if score #state kaji_tmp matches 0 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 10 番に強化する物を置いてください", "color": "yellow"}
execute if score #state kaji_tmp matches 1 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] これは強化できません", "color": "red"}
function tm_workbench:kaji/kyouka/calc
execute as @a[tag=kaji_user,limit=1] run function tm_workbench:kaji/kyouka/calc_have

# Lv の上限（素材より先に見る。素材も使わない）
execute if score #over kaji_tmp matches 1 as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score #over kaji_tmp matches 1 run return run tellraw @a[tag=kaji_user,limit=1] [{"text": "[鍛冶台] Lv が足りないため強化できません。Lv ", "color": "red"}, {"score": {"name": "#cap", "objective": "kaji_tmp"}, "color": "red"}, {"text": " まで強化できます", "color": "red"}]
# 素材・gold
execute if score #allok kaji_tmp matches 0 as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score #allok kaji_tmp matches 0 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 素材か gold が足りません（赤い数字の物）", "color": "red"}

# 払う（失敗しても戻らない）
execute as @a[tag=kaji_user,limit=1] run function tm_workbench:gen/kaji/pay
scoreboard players operation @a[tag=kaji_user,limit=1] gold -= #gold kaji_tmp

# 判定
execute store result score #roll kaji_tmp run random value 1..100
execute if score #roll kaji_tmp > #rate kaji_tmp run function tm_workbench:kaji/kyouka/fail
execute if score #roll kaji_tmp <= #rate kaji_tmp run function tm_workbench:kaji/kyouka/success

# 表示を出し直す（Lv・成功率・素材が変わる）
function tm_workbench:kaji/recheck
function tm_workbench:kaji/refresh_in
