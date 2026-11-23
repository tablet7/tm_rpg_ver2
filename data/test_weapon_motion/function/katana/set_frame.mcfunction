#> test_weapon_motion:katana/set_frame

# メインハンドの刀の見た目を、@s の twm_kt_f のコマにする（custom_model_data の floats を [twm_kt_f] にする）
# strings（細い腕の "slim"）はそのまま残る。書き換えるたびにスロットの中身が送り直されるので、コマが変わるときだけ呼ぶ
# @s ＝ プレイヤー

scoreboard players operation #frame twm_tmp = @s twm_kt_f
item modify entity @s weapon.mainhand test_weapon_motion:frame
