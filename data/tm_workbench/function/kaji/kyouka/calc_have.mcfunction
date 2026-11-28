#> tm_workbench:kaji/kyouka/calc_have

# 持っている素材・gold・成功率・Lv の上限を計算する（kaji/kyouka/calc のあと）
# 出力（kaji_tmp）: #nok<段階>・#gnok<段階>・#goldok・#allok（1 ＝ 足りる）、#rate、#cap・#over
# @s ＝ 持ち主のプレイヤー（スコア gold・luck・Lv・mat_*）

function tm_workbench:gen/kaji/have
scoreboard players set #nok1 kaji_tmp 1
execute if score #h1 kaji_tmp < #n1 kaji_tmp run scoreboard players set #nok1 kaji_tmp 0
scoreboard players set #gnok1 kaji_tmp 1
execute if score #gh1 kaji_tmp < #gn1 kaji_tmp run scoreboard players set #gnok1 kaji_tmp 0
scoreboard players set #nok2 kaji_tmp 1
execute if score #h2 kaji_tmp < #n2 kaji_tmp run scoreboard players set #nok2 kaji_tmp 0
scoreboard players set #gnok2 kaji_tmp 1
execute if score #gh2 kaji_tmp < #gn2 kaji_tmp run scoreboard players set #gnok2 kaji_tmp 0
scoreboard players set #nok3 kaji_tmp 1
execute if score #h3 kaji_tmp < #n3 kaji_tmp run scoreboard players set #nok3 kaji_tmp 0
scoreboard players set #gnok3 kaji_tmp 1
execute if score #gh3 kaji_tmp < #gn3 kaji_tmp run scoreboard players set #gnok3 kaji_tmp 0
scoreboard players set #nok4 kaji_tmp 1
execute if score #h4 kaji_tmp < #n4 kaji_tmp run scoreboard players set #nok4 kaji_tmp 0
scoreboard players set #gnok4 kaji_tmp 1
execute if score #gh4 kaji_tmp < #gn4 kaji_tmp run scoreboard players set #gnok4 kaji_tmp 0
scoreboard players set #nok5 kaji_tmp 1
execute if score #h5 kaji_tmp < #n5 kaji_tmp run scoreboard players set #nok5 kaji_tmp 0
scoreboard players set #gnok5 kaji_tmp 1
execute if score #gh5 kaji_tmp < #gn5 kaji_tmp run scoreboard players set #gnok5 kaji_tmp 0
scoreboard players set #nok6 kaji_tmp 1
execute if score #h6 kaji_tmp < #n6 kaji_tmp run scoreboard players set #nok6 kaji_tmp 0
scoreboard players set #gnok6 kaji_tmp 1
execute if score #gh6 kaji_tmp < #gn6 kaji_tmp run scoreboard players set #gnok6 kaji_tmp 0
# gold
scoreboard players operation #ghave kaji_tmp = @s gold
scoreboard players set #goldok kaji_tmp 1
execute if score #ghave kaji_tmp < #gold kaji_tmp run scoreboard players set #goldok kaji_tmp 0
# 全部足りるか
scoreboard players set #allok kaji_tmp 1
execute if score #nok1 kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
execute if score #nok2 kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
execute if score #nok3 kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
execute if score #nok4 kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
execute if score #nok5 kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
execute if score #nok6 kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
execute if score #gnok1 kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
execute if score #gnok2 kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
execute if score #gnok3 kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
execute if score #gnok4 kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
execute if score #gnok5 kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
execute if score #gnok6 kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
execute if score #goldok kaji_tmp matches 0 run scoreboard players set #allok kaji_tmp 0
# 成功率 ＝ 100 − 10j − 10t ＋ 運（10〜100）
scoreboard players set #rate kaji_tmp 100
scoreboard players operation #d kaji_tmp = #j kaji_tmp
scoreboard players operation #d kaji_tmp += #t kaji_tmp
scoreboard players operation #d kaji_tmp *= #10 kaji_tmp
scoreboard players operation #rate kaji_tmp -= #d kaji_tmp
scoreboard players operation #rate kaji_tmp += @s luck
execute if score #rate kaji_tmp matches ..9 run scoreboard players set #rate kaji_tmp 10
execute if score #rate kaji_tmp matches 101.. run scoreboard players set #rate kaji_tmp 100
# 強化できる Lv の上限 ＝ 自分の Lv × 4 ÷ 3（切り捨て）。（置いた物の Lv ＋ 1）× 3 ＞ 自分の Lv × 4 なら強化できない（#over 1）
scoreboard players operation #cap kaji_tmp = @s Lv
scoreboard players operation #cap kaji_tmp *= #4 kaji_tmp
scoreboard players operation #d kaji_tmp = #lv1 kaji_tmp
scoreboard players operation #d kaji_tmp *= #3 kaji_tmp
scoreboard players set #over kaji_tmp 0
execute if score #state kaji_tmp matches 2 if score #d kaji_tmp > #cap kaji_tmp run scoreboard players set #over kaji_tmp 1
scoreboard players operation #cap kaji_tmp /= #3 kaji_tmp
