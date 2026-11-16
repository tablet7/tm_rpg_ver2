#> tm_rpg:player/death/on_respawn

# プレイヤーがリスポーンしたときの処理。player/death/respawn_check から呼ばれる
# 状態をリセットする（エフェクト・HP・MP・HP バーなど。player/reload）
# @s ＝ リスポーンしたプレイヤー（at @s ＝ リスポーンした場所）

tag @s remove respawn_wait
execute at @s run function tm_rpg:player/reload
