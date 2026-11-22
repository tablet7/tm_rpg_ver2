#> tm_rpg:player/skill/fx/tick

# 弾・設置物が出ているあいだの毎 tick の演出を、スキルごとの関数（<スキル>/fx/tick）に呼び分ける。main_projectile/tick から、移動と見た目のあとに呼ばれる
# 弾に tag fx_tick と、スキルの演出のタグ fx_<スキル名>（/ は _ に）を付けておくと呼ばれる（関数名を変えるためのマクロを使わない）
# 演出を足したら、ここに1行足す（mc-skill-fx の mcfx.py build が足す）
# @s ＝ 弾（at @s。移動したあとの場所）
execute if entity @s[tag=fx_fly_slash] run return run function tm_rpg:player/skill/fly_slash/fx/tick
execute if entity @s[tag=fx_ice_breath] run return run function tm_rpg:player/skill/ice_breath/fx/tick
execute if entity @s[tag=fx_fire_dash] run return run function tm_rpg:player/skill/fire_dash/fx/tick
execute if entity @s[tag=fx_light_cross] run return run function tm_rpg:player/skill/light_cross/fx/tick
execute if entity @s[tag=fx_light_cross_cross] run return run function tm_rpg:player/skill/light_cross/cross/fx/tick
execute if entity @s[tag=fx_wolf_dash] run return run function tm_rpg:player/skill/wolf_dash/fx/tick
execute if entity @s[tag=fx_wolf_wave] run return run function tm_rpg:player/skill/wolf_wave/fx/tick
execute if entity @s[tag=fx_wolf_ring] run return run function tm_rpg:player/skill/wolf_ring/fx/tick
