#> test_weapon_motion:katana/attack/next

# 次の技を始める。今の技の終わりのコマ（6・14・20・39・45・51・61）の次のコマが、次の技の最初のコマ（7・15・21・40・46・52・62）
# katana/attack/tick（技の途中に右クリックが押されていた）・katana/wait/tick（待っているあいだに右クリック）から呼ばれる
# @s ＝ プレイヤー（at @s）

scoreboard players set @s twm_kt 1
scoreboard players add @s twm_kt_n 1
scoreboard players add @s twm_kt_f 1
scoreboard players set @s twm_kt_q 0
function test_weapon_motion:katana/set_frame
