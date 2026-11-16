#> tm_rpg:player/death/respawn_check

# 死んだプレイヤー（tag respawn_wait）がリスポーンしたかを調べる関数。player/main の最初から、tag respawn_wait があるときだけ毎 tick 呼ばれる
# 体力（Health）が 1 以上なら生き返っているので、player/death/on_respawn を呼ぶ
# @s ＝ リスポーン待ちのプレイヤー

execute store result score #respawn_hp temp run data get entity @s Health
execute if score #respawn_hp temp matches 1.. run function tm_rpg:player/death/on_respawn
