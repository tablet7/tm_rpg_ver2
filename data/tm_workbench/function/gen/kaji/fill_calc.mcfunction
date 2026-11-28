#> tm_workbench:gen/kaji/fill_calc

# 強化の「足りない分を変換」: 崩す数 #flk<段階>（系統）・#glk<段階>（宝石系）と 10 倍 #flp・#glp、#flst を計算する
# gen_gui.py が作る（手で直さない。md/gui_md/screens.json・items.json・materials.json を直して作り直す）
# 入力: #n・#gn・#h・#gh<段階> kaji_tmp（kaji/kyouka/calc・calc_have のあと）。kaji/refresh/kyouka・kaji/fill/do から
# #flk<段階> ＝ 段階 <段階> を崩す数（1 つ下の段階が 10 倍増える）

# 装備の系統（要る数 #n<段階>・持っている数 #h<段階>）
scoreboard players operation #flh1 kaji_tmp = #h1 kaji_tmp
scoreboard players operation #flh2 kaji_tmp = #h2 kaji_tmp
scoreboard players operation #flh3 kaji_tmp = #h3 kaji_tmp
scoreboard players operation #flh4 kaji_tmp = #h4 kaji_tmp
scoreboard players operation #flh5 kaji_tmp = #h5 kaji_tmp
scoreboard players operation #flh6 kaji_tmp = #h6 kaji_tmp
scoreboard players set #flk2 kaji_tmp 0
scoreboard players set #flk3 kaji_tmp 0
scoreboard players set #flk4 kaji_tmp 0
scoreboard players set #flk5 kaji_tmp 0
scoreboard players set #flk6 kaji_tmp 0
# 段階 1 が足りなければ、段階 2 を（足りない数 ＋ 9）÷ 10 個崩す
scoreboard players operation #d kaji_tmp = #n1 kaji_tmp
scoreboard players operation #d kaji_tmp -= #flh1 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players add #d kaji_tmp 9
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #d kaji_tmp /= #10 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #flk2 kaji_tmp = #d kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #flh2 kaji_tmp -= #d kaji_tmp
# 段階 2 が足りなければ、段階 3 を（足りない数 ＋ 9）÷ 10 個崩す
scoreboard players operation #d kaji_tmp = #n2 kaji_tmp
scoreboard players operation #d kaji_tmp -= #flh2 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players add #d kaji_tmp 9
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #d kaji_tmp /= #10 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #flk3 kaji_tmp = #d kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #flh3 kaji_tmp -= #d kaji_tmp
# 段階 3 が足りなければ、段階 4 を（足りない数 ＋ 9）÷ 10 個崩す
scoreboard players operation #d kaji_tmp = #n3 kaji_tmp
scoreboard players operation #d kaji_tmp -= #flh3 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players add #d kaji_tmp 9
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #d kaji_tmp /= #10 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #flk4 kaji_tmp = #d kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #flh4 kaji_tmp -= #d kaji_tmp
# 段階 4 が足りなければ、段階 5 を（足りない数 ＋ 9）÷ 10 個崩す
scoreboard players operation #d kaji_tmp = #n4 kaji_tmp
scoreboard players operation #d kaji_tmp -= #flh4 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players add #d kaji_tmp 9
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #d kaji_tmp /= #10 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #flk5 kaji_tmp = #d kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #flh5 kaji_tmp -= #d kaji_tmp
# 段階 5 が足りなければ、段階 6 を（足りない数 ＋ 9）÷ 10 個崩す
scoreboard players operation #d kaji_tmp = #n5 kaji_tmp
scoreboard players operation #d kaji_tmp -= #flh5 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players add #d kaji_tmp 9
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #d kaji_tmp /= #10 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #flk6 kaji_tmp = #d kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #flh6 kaji_tmp -= #d kaji_tmp
scoreboard players operation #flp2 kaji_tmp = #flk2 kaji_tmp
scoreboard players operation #flp3 kaji_tmp = #flk3 kaji_tmp
scoreboard players operation #flp4 kaji_tmp = #flk4 kaji_tmp
scoreboard players operation #flp5 kaji_tmp = #flk5 kaji_tmp
scoreboard players operation #flp6 kaji_tmp = #flk6 kaji_tmp
scoreboard players operation #flp2 kaji_tmp *= #10 kaji_tmp
scoreboard players operation #flp3 kaji_tmp *= #10 kaji_tmp
scoreboard players operation #flp4 kaji_tmp *= #10 kaji_tmp
scoreboard players operation #flp5 kaji_tmp *= #10 kaji_tmp
scoreboard players operation #flp6 kaji_tmp *= #10 kaji_tmp
# 宝石系（要る数 #gn<段階>・持っている数 #gh<段階>）
scoreboard players operation #glh1 kaji_tmp = #gh1 kaji_tmp
scoreboard players operation #glh2 kaji_tmp = #gh2 kaji_tmp
scoreboard players operation #glh3 kaji_tmp = #gh3 kaji_tmp
scoreboard players operation #glh4 kaji_tmp = #gh4 kaji_tmp
scoreboard players operation #glh5 kaji_tmp = #gh5 kaji_tmp
scoreboard players operation #glh6 kaji_tmp = #gh6 kaji_tmp
scoreboard players set #glk2 kaji_tmp 0
scoreboard players set #glk3 kaji_tmp 0
scoreboard players set #glk4 kaji_tmp 0
scoreboard players set #glk5 kaji_tmp 0
scoreboard players set #glk6 kaji_tmp 0
# 段階 1 が足りなければ、段階 2 を（足りない数 ＋ 9）÷ 10 個崩す
scoreboard players operation #d kaji_tmp = #gn1 kaji_tmp
scoreboard players operation #d kaji_tmp -= #glh1 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players add #d kaji_tmp 9
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #d kaji_tmp /= #10 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #glk2 kaji_tmp = #d kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #glh2 kaji_tmp -= #d kaji_tmp
# 段階 2 が足りなければ、段階 3 を（足りない数 ＋ 9）÷ 10 個崩す
scoreboard players operation #d kaji_tmp = #gn2 kaji_tmp
scoreboard players operation #d kaji_tmp -= #glh2 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players add #d kaji_tmp 9
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #d kaji_tmp /= #10 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #glk3 kaji_tmp = #d kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #glh3 kaji_tmp -= #d kaji_tmp
# 段階 3 が足りなければ、段階 4 を（足りない数 ＋ 9）÷ 10 個崩す
scoreboard players operation #d kaji_tmp = #gn3 kaji_tmp
scoreboard players operation #d kaji_tmp -= #glh3 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players add #d kaji_tmp 9
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #d kaji_tmp /= #10 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #glk4 kaji_tmp = #d kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #glh4 kaji_tmp -= #d kaji_tmp
# 段階 4 が足りなければ、段階 5 を（足りない数 ＋ 9）÷ 10 個崩す
scoreboard players operation #d kaji_tmp = #gn4 kaji_tmp
scoreboard players operation #d kaji_tmp -= #glh4 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players add #d kaji_tmp 9
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #d kaji_tmp /= #10 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #glk5 kaji_tmp = #d kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #glh5 kaji_tmp -= #d kaji_tmp
# 段階 5 が足りなければ、段階 6 を（足りない数 ＋ 9）÷ 10 個崩す
scoreboard players operation #d kaji_tmp = #gn5 kaji_tmp
scoreboard players operation #d kaji_tmp -= #glh5 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players add #d kaji_tmp 9
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #d kaji_tmp /= #10 kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #glk6 kaji_tmp = #d kaji_tmp
execute if score #d kaji_tmp matches 1.. run scoreboard players operation #glh6 kaji_tmp -= #d kaji_tmp
scoreboard players operation #glp2 kaji_tmp = #glk2 kaji_tmp
scoreboard players operation #glp3 kaji_tmp = #glk3 kaji_tmp
scoreboard players operation #glp4 kaji_tmp = #glk4 kaji_tmp
scoreboard players operation #glp5 kaji_tmp = #glk5 kaji_tmp
scoreboard players operation #glp6 kaji_tmp = #glk6 kaji_tmp
scoreboard players operation #glp2 kaji_tmp *= #10 kaji_tmp
scoreboard players operation #glp3 kaji_tmp *= #10 kaji_tmp
scoreboard players operation #glp4 kaji_tmp *= #10 kaji_tmp
scoreboard players operation #glp5 kaji_tmp *= #10 kaji_tmp
scoreboard players operation #glp6 kaji_tmp *= #10 kaji_tmp
# #flst: 0 足りない物は無い・1 崩せば足りる・2 一番上の段階が足りないので崩しても足りない
scoreboard players set #flst kaji_tmp 0
execute if score #flk2 kaji_tmp matches 1.. run scoreboard players set #flst kaji_tmp 1
execute if score #flk3 kaji_tmp matches 1.. run scoreboard players set #flst kaji_tmp 1
execute if score #flk4 kaji_tmp matches 1.. run scoreboard players set #flst kaji_tmp 1
execute if score #flk5 kaji_tmp matches 1.. run scoreboard players set #flst kaji_tmp 1
execute if score #flk6 kaji_tmp matches 1.. run scoreboard players set #flst kaji_tmp 1
execute if score #glk2 kaji_tmp matches 1.. run scoreboard players set #flst kaji_tmp 1
execute if score #glk3 kaji_tmp matches 1.. run scoreboard players set #flst kaji_tmp 1
execute if score #glk4 kaji_tmp matches 1.. run scoreboard players set #flst kaji_tmp 1
execute if score #glk5 kaji_tmp matches 1.. run scoreboard players set #flst kaji_tmp 1
execute if score #glk6 kaji_tmp matches 1.. run scoreboard players set #flst kaji_tmp 1
execute if score #flh6 kaji_tmp < #n6 kaji_tmp run scoreboard players set #flst kaji_tmp 2
execute if score #glh6 kaji_tmp < #gn6 kaji_tmp run scoreboard players set #flst kaji_tmp 2
