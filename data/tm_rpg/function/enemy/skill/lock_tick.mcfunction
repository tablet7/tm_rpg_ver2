#> tm_rpg:enemy/skill/lock_tick

# 技を使っていて動けない敵（スコア skill_lock が 1 以上）の毎 tick の処理。enemy/main から呼ばれる
# 残り tick を減らし、0 になったら移動速度を元に戻す（enemy/skill/lock が付けた modifier を外す）
# @s ＝ 敵

scoreboard players remove @s skill_lock 1
execute if score @s skill_lock matches ..0 run attribute @s minecraft:movement_speed modifier remove tm_rpg:skill_lock
