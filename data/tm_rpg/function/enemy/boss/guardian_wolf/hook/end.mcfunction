#> tm_rpg:enemy/boss/guardian_wolf/hook/end

# ボス「ガーディアンウルフ」を片付けるときの処理（手で書いた関数。リグ定義の hooks.end）。guardian_wolf/despawn から呼ばれる
# 撃破・離脱（48 マス以内に誰もいない）・/reload のあと・召喚の直前（前のボスが残っていたとき）のどれでも呼ばれる
# 嵐（雷雨）にしていたときだけ、天候を晴れに戻す（第2形態になる前に終わったときは、天候を変えない）
# @s ＝ マスター（at @s）

execute if score @s gw_storm matches 1.. run weather clear
scoreboard players set @s gw_storm 0
