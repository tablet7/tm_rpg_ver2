#> tm_rpg:player/death/on_death

# プレイヤーが死んだときの処理。player/main から呼ばれる（死んだ回数 player_deaths が増えたとき）
# まだリスポーン前（死んでいる）ことがあるので、ここではリセットしない（死んでいるあいだに付けたエフェクトは、リスポーンで消えるため）
# tag respawn_wait を付け、リスポーンしたら player/death/respawn_check が player/death/on_respawn を呼んで、player/reload でリセットする
# @s ＝ 死んだプレイヤー

# リスポーンしたとき、HP が 0 のままだと death_main がすぐまた倒すので、先に HP だけ戻す
scoreboard players operation @s hp = @s HP_MAX

tag @s add respawn_wait
