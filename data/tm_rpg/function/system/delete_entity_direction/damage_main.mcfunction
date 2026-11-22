#> tm_rpg:system/delete_entity_direction/damage_main

# ダメージを与える弾（tag damage_marker）の毎 tick の処理。player/skill/main_projectile/tick から呼ばれる
# スキルだけの毎 tick の処理がある弾は、スキル名のタグで <スキル>/skill3 を呼ぶ（skill3 は main_projectile/hit の結果を返すこと。1 ＝ 弾を消す）
# スキルのタグが無い弾は、共通の当たり判定だけ動かす
# @s ＝ 弾（at @s）

# スキルごとの処理（スキルを足したら、ここに1行足す）
execute if entity @s[tag=test_pro] run return run function tm_rpg:player/skill/test_pro/skill3
# 炎の突進の当たり判定は、毎 tick 使った人の場所へ動いてから当たる
execute if entity @s[tag=fire_dash_hit] run return run function tm_rpg:player/skill/fire_dash/skill5
# ボス「ガーディアンウルフ」の突進の当たり判定は、毎 tick ボスの体の前半へ動いてから当たる
execute if entity @s[tag=wolf_dash_hit] run return run function tm_rpg:player/skill/wolf_dash/skill3

# 太いレーザー（tag beam）は、線に沿って当たり判定を動かす（main_projectile/beam/hit）
execute if entity @s[tag=beam] run return run function tm_rpg:player/skill/main_projectile/beam/hit

# 共通の当たり判定
return run function tm_rpg:player/skill/main_projectile/hit
