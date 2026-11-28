#> tm_workbench:kaji/kaizou/calc_have

# 改造の、持っている gold・成功率・Lv の上限を計算する（kaji/kaizou/calc のあと）
# 出力（kaji_tmp）: #ghave・#goldok・#rate・#plv（自分の Lv）・#lv1・#cap・#allok（1 ＝ 改造できる）。Lv の上限を超えていれば #why を 10 にする
# @s ＝ 持ち主のプレイヤー（スコア gold・luck・Lv）

# gold
scoreboard players operation #ghave kaji_tmp = @s gold
scoreboard players set #goldok kaji_tmp 1
execute if score #ghave kaji_tmp < #gold kaji_tmp run scoreboard players set #goldok kaji_tmp 0
# 成功率 ＝ 100 − 30 × 改造した回数 ＋ 運（10〜100）。錬石だけは 100
scoreboard players set #rate kaji_tmp 100
scoreboard players operation #d kaji_tmp = #kz kaji_tmp
scoreboard players operation #d kaji_tmp *= #30 kaji_tmp
scoreboard players operation #rate kaji_tmp -= #d kaji_tmp
scoreboard players operation #rate kaji_tmp += @s luck
execute if score #rate kaji_tmp matches ..9 run scoreboard players set #rate kaji_tmp 10
execute if score #rate kaji_tmp matches 101.. run scoreboard players set #rate kaji_tmp 100
execute if score #kit kaji_tmp matches 1 run scoreboard players set #rate kaji_tmp 100
# 可能性の琥珀の値は自分の Lv で決まる
scoreboard players operation #plv kaji_tmp = @s Lv
execute if score #plv kaji_tmp matches ..0 run scoreboard players set #plv kaji_tmp 1
# Lv の上限（錬石だけ。強化と同じ境目: （置いた物の Lv ＋ 1）× 3 ＞ 自分の Lv × 4 なら使えない）
scoreboard players operation #lv1 kaji_tmp = #lv kaji_tmp
scoreboard players add #lv1 kaji_tmp 1
scoreboard players operation #cap kaji_tmp = @s Lv
scoreboard players operation #cap kaji_tmp *= #4 kaji_tmp
scoreboard players operation #d kaji_tmp = #lv1 kaji_tmp
scoreboard players operation #d kaji_tmp *= #3 kaji_tmp
execute if score #why kaji_tmp matches 0 if score #kit kaji_tmp matches 1 if score #d kaji_tmp > #cap kaji_tmp run scoreboard players set #why kaji_tmp 10
scoreboard players operation #cap kaji_tmp /= #3 kaji_tmp
# 全部そろっているか
scoreboard players set #allok kaji_tmp 0
execute if score #why kaji_tmp matches 0 if score #goldok kaji_tmp matches 1 run scoreboard players set #allok kaji_tmp 1
