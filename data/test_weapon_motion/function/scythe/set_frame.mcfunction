#> test_weapon_motion:scythe/set_frame

# メインハンドの大鎌の見た目を、@s の twm_sc_f のコマにする（custom_model_data の floats を [twm_sc_f] にする）
# strings（細い腕の "slim"）はそのまま残る（set_custom_model_data は書いた項目だけを変える。26.3 のコードで確認）
# 書き換えるたびにスロットの中身が送り直されるので、コマが変わるときだけ呼ぶ
# @s ＝ プレイヤー

scoreboard players operation #frame twm_tmp = @s twm_sc_f
item modify entity @s weapon.mainhand test_weapon_motion:frame
