#> tm_rpg:player/skill/fx/seq/run

# 時間差の演出を、スキルごとの関数（<スキル>/fx/<場面>_seq）に呼び分ける。fx/seq/tick から呼ばれる
# 進行役の tag fxs_<スキル名>_<場面>（/ は _ に）で選ぶ（関数名を変えるためのマクロを使わない）
# 演出を足したら、ここに1行足す（mc-skill-fx の mcfx.py build が足す）
# @s ＝ 進行役（at @s）。スコア fx_t ＝ 出してからの tick 数
execute if entity @s[tag=fxs_fly_slash_cast] run return run function tm_rpg:player/skill/fly_slash/fx/cast_seq
