#> tm_workbench:kaji/load

# 鍛冶台（tm_workbench:kaji/）のスコアを作る。tm_workbench:load から呼ばれる
# 説明: md/gui_md/kaji.md

# 計算用（#lv・#kk・#n<段階> など）。表示の lore もこのスコアを読む
scoreboard objectives add kaji_tmp dummy
# トロッコ: 置く場所（10 番）に物があるか・置いた物の種類（0 強化できない・1 武器・2 スキル・3 防具とアクセサリー）・Lv・強化回数・改造した回数・upgrade_res
# 表示を作ったときの値を覚えておき、ボタンを押したときに読み直した値と比べる（入れ替えたときに、見ていない費用を払わせないため）
scoreboard objectives add kaji_has dummy
scoreboard objectives add kaji_kind dummy
scoreboard objectives add kaji_lv dummy
scoreboard objectives add kaji_kyouka dummy
scoreboard objectives add kaji_kaizou dummy
scoreboard objectives add kaji_res dummy
# トロッコ: 改造アイテムを置く場所（12 番）の物（kaji/kaizou/kit。0 何も無い・1〜8 改造アイテム・9 改造アイテムでない物）
scoreboard objectives add kaji_kit dummy
# 計算用の数
scoreboard players set #2 kaji_tmp 2
scoreboard players set #3 kaji_tmp 3
scoreboard players set #4 kaji_tmp 4
scoreboard players set #5 kaji_tmp 5
scoreboard players set #6 kaji_tmp 6
scoreboard players set #8 kaji_tmp 8
scoreboard players set #10 kaji_tmp 10
scoreboard players set #20 kaji_tmp 20
scoreboard players set #30 kaji_tmp 30
scoreboard players set #100 kaji_tmp 100
# トロッコ: 素材の変換の画面（105）で選んでいる系統（系統の番号）・一度に変える数（1 ×1・2 ×10・3 ×100・4 ×1000・5 全部）・
# 「全部」の確認待ちの段階（0 ＝ 待っていない）と、切れる gametime（kaji/conv/）
scoreboard objectives add kaji_cvfam dummy
scoreboard objectives add kaji_cvmode dummy
scoreboard objectives add kaji_cvconf dummy
scoreboard objectives add kaji_cvtime dummy
