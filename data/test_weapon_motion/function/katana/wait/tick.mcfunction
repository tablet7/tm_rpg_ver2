#> test_weapon_motion:katana/wait/tick

# 技の終わりのコマのまま、次の右クリックを待つ（twm_kt 2）毎 tick の処理。katana/tick から呼ばれる
# 受付時間内に右クリックすれば次の技、過ぎたら構えに戻る
# @s ＝ プレイヤー（at @s）

scoreboard players add @s twm_kt_t 1
execute if score #use twm_tmp matches 1 run return run function test_weapon_motion:katana/attack/next
# 受付時間を変えるときは、この行の数字（受付時間 + 1）だけを変える（今は 10 tick = 0.5 秒）
execute if score @s twm_kt_t matches 11.. run function test_weapon_motion:katana/back/start
