#> tm_rpg:player/skill/main_projectile/beam/apply_rot

# 向きが変わる太いレーザーの向きを、スコアからエンティティの向き（Rotation）に入れる
# main_projectile/beam/sweep（毎 tick）と main_projectile/beam/circle_init（出したとき）から呼ばれる
# 向き ＝ sweep_rot_y / sweep_rot_x（0.1 度）＋ 円を描くレーザーなら円の上の位置 circle_ox / circle_oy（0.001 度）
# 上下は -90〜90 度に収める
# @s ＝ レーザー

# 0.001 度単位にそろえる
scoreboard players set #beam_k temp 100
scoreboard players operation #beam_rot_y temp = @s sweep_rot_y
scoreboard players operation #beam_rot_y temp *= #beam_k temp
scoreboard players operation #beam_rot_x temp = @s sweep_rot_x
scoreboard players operation #beam_rot_x temp *= #beam_k temp
execute if entity @s[tag=beam_circle] run scoreboard players operation #beam_rot_y temp += @s circle_ox
execute if entity @s[tag=beam_circle] run scoreboard players operation #beam_rot_x temp += @s circle_oy

execute if score #beam_rot_x temp matches 90001.. run scoreboard players set #beam_rot_x temp 90000
execute if score #beam_rot_x temp matches ..-90001 run scoreboard players set #beam_rot_x temp -90000
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #beam_rot_y temp
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get #beam_rot_x temp
