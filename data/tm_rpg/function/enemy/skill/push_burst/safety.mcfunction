#> tm_rpg:enemy/skill/push_burst/safety

# 念のための片付け。#push_burst_wait temp が 1 以上のとき main から毎 tick 呼ばれる
# 防具立てのエンチャントが動かずに残ったとき（エンチャントを足したあとサーバーを再起動していないときなど）、3 tick 後に防具立てを消して、敵の属性を戻す（ふつうは after が先に片付けるので、ここまで来ない）
# @s ＝ サーバー（main の実行者）

scoreboard players remove #push_burst_wait temp 1
execute if score #push_burst_wait temp matches 1.. run return 0
kill @e[type=minecraft:armor_stand,tag=push_burst_helper]
function tm_rpg:enemy/skill/push_burst/unguard
