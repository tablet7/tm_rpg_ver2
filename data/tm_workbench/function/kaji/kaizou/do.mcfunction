#> tm_workbench:kaji/kaizou/do

# 改造する。読み直す → 変わっていたら表示だけ直す → 使えるか → gold → 払う（改造アイテム 1 つと gold）→ 成功率で判定 → 成功なら改造アイテムの効果と kaizou ＋1
# kaji/kaizou/press から呼ばれる。@s ＝ トロッコ（持ち主に tag kaji_user）

function tm_workbench:kaji/recheck
scoreboard players operation #o_kit kaji_tmp = @s kaji_kit
function tm_workbench:kaji/kaizou/kit
execute unless score #o_kit kaji_tmp = #kit kaji_tmp run scoreboard players set #changed kaji_tmp 1
execute if score #changed kaji_tmp matches 1 run function tm_workbench:kaji/refresh_in
execute if score #changed kaji_tmp matches 1 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] 置いた物が変わったので、表示を直しました。もう一度押してください", "color": "yellow"}
function tm_workbench:kaji/kaizou/calc
execute as @a[tag=kaji_user,limit=1] run function tm_workbench:kaji/kaizou/calc_have
# 使えない（改造アイテムも gold も使わない）
execute unless score #why kaji_tmp matches 0 run return run function tm_workbench:kaji/kaizou/why_msg
execute if score #goldok kaji_tmp matches 0 as @a[tag=kaji_user,limit=1] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score #goldok kaji_tmp matches 0 run return run tellraw @a[tag=kaji_user,limit=1] {"text": "[鍛冶台] gold が足りません", "color": "red"}

# 払う（失敗しても戻らない）。改造アイテムは 1 つ減らす（set_count で −1。NBT は触らない）
item modify entity @s container.12 tm_workbench:kaji/kaizou/use_one
scoreboard players operation @a[tag=kaji_user,limit=1] gold -= #gold kaji_tmp

# 判定（錬石は #rate 100 なので必ず成功）
execute store result score #roll kaji_tmp run random value 1..100
execute if score #roll kaji_tmp > #rate kaji_tmp run function tm_workbench:kaji/kaizou/fail
execute if score #roll kaji_tmp <= #rate kaji_tmp run function tm_workbench:kaji/kaizou/success

# 表示を出し直す（改造できる回数・成功率・gold・改造アイテムの数が変わる）
function tm_workbench:kaji/recheck
function tm_workbench:kaji/refresh_in
