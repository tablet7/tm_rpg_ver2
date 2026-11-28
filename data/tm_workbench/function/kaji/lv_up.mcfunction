#> tm_workbench:kaji/lv_up

# Lv が 1 上がったときの伸び（強化・錬石で使う）。値を伸ばし、置いた物（10 番）の custom_data と lore を書き換える
# @s ＝ トロッコ。入力: storage tm_workbench:kaji item（lv・kyouka は書き換え済み）、#lv（上がったあとの Lv）・#kk・#kz・#kind kaji_tmp
# 伸び: md/gui_md/design.md 3-1「Lv が上がったときの伸び」。上がったあとの Lv が 5 の倍数なら per も伸ばす

scoreboard players operation #five kaji_tmp = #lv kaji_tmp
scoreboard players operation #five kaji_tmp %= #5 kaji_tmp
execute if score #kind kaji_tmp matches 1 run function tm_workbench:kaji/lv_up/weapon
execute if score #kind kaji_tmp matches 2 run function tm_workbench:kaji/lv_up/skill
execute if score #kind kaji_tmp matches 3 run function tm_workbench:kaji/lv_up/gear
