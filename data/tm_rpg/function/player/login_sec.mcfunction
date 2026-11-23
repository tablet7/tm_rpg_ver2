#> tm_rpg:player/login_sec

# 2回目以降のログイン（一度抜けてから入り直した）ときの処理。player/main から leave_game が 1 以上のときに呼ばれる
# プレイヤーの状態をリセットし（player/reload）、抜けた回数の統計 leave_game を消して、次に抜けるまで動かないようにする
# @s ＝ 入り直したプレイヤー

function tm_rpg:player/reload

scoreboard players reset @s leave_game
