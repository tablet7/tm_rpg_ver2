#> tm_rpg:system/buff/skill/test1/remove

# スキルのバフ「テスト用1（物理攻撃）」を外す関数。buff/expire（時間切れ）、skill/test1/add（上書き）、skill/reset から呼ばれる
# buff_next は直さない（呼ぶ側で buff/next を呼ぶ。上書きのときは直さなくてよい）
# @s ＝ バフを持つ相手
# このファイルは md/system_md/buff/gen_buff.py が作る（手で直さない。直すときは buff_skills.json か gen_buff.py を変えて作り直す）

scoreboard players operation @s skill_pattack_buff -= @s buff_v_test1_pattack
scoreboard players reset @s buff_v_test1_pattack
scoreboard players reset @s buff_e_test1

# ステータスを組み立て直す（stutas/hendou_main）
scoreboard players set @s stat_dirty 1
