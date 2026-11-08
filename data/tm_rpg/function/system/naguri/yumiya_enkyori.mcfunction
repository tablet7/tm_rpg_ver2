#> tm_rpg:system/naguri/yumiya_enkyori

# 弓を撃ったときの処理。player/main から shot_bow が1以上のときに呼ばれる
# 弓攻撃の有効時間（shot_bow_time）を30tickにする
# @s ＝ 弓を撃ったプレイヤー

scoreboard players set @s shot_bow_time 30
scoreboard players set @s shot_bow 0
