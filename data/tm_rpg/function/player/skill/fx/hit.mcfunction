#> tm_rpg:player/skill/fx/hit

# 弾・設置物が当たったときの演出を、スキルごとの関数（<スキル>/fx/hit）に呼び分ける。main_projectile/hit から、1体以上に当たった tick に呼ばれる
# 弾に tag fx_hit と、スキルの演出のタグ fx_<スキル名>（/ は _ に）を付けておくと呼ばれる（関数名を変えるためのマクロを使わない）
# 演出を足したら、ここに1行足す（mc-skill-fx の mcfx.py build が足す）
# @s ＝ 弾（at @s）
execute if entity @s[tag=fx_fly_slash] run return run function tm_rpg:player/skill/fly_slash/fx/hit
