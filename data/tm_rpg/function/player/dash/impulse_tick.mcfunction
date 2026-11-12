#> tm_rpg:player/dash/impulse_tick

# tm_rpg:player/main から dash_on が 1 以上のときに呼ばれる
# エンチャントが発動しなかった（持ち替えたなど）ときに、2 tick 後にスコアを消して、後から急に飛ばないようにする
# @s ＝ プレイヤー

scoreboard players remove @s dash_on 1
execute if score @s dash_on matches ..0 run function tm_rpg:player/dash/impulse_reset
