#> tm_rpg:player/hud/hold_tick

# HUD を送るのを止めている時間（hud_hold、tick）を 1 減らし、0 になったら HUD を送り直す関数（マクロなし）
# player/main から、hud_hold が 1 以上のときだけ呼ばれる
# ほかの処理がアクションバーにメッセージを出すときは、先に scoreboard players set @s hud_hold 40 とする（2秒は HUD で上書きしない）
# @s ＝ プレイヤー

scoreboard players remove @s hud_hold 1
execute if score @s hud_hold matches 0 run function tm_rpg:player/hud/show
