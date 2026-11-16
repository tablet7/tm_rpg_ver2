#> tm_rpg:player/skill/fx/seq/tick

# 時間差の演出の進行役（tag fx_seq の marker）の毎 tick の処理（共通）。main から呼ばれる
# fx_t を1増やし、tag fx_follow なら使った人の場所に動かしてから、スキルごとの関数を呼ぶ（fx/seq/run）
# @s ＝ 進行役（at @s）

scoreboard players add @s fx_t 1
execute if entity @s[tag=fx_follow] run function tm_rpg:player/skill/fx/seq/follow
execute at @s run function tm_rpg:player/skill/fx/seq/run
