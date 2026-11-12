#> tm_rpg:player/dash/impulse_reset

# ダッシュ用のスコアを 0 に戻す
# エンチャント tm_rpg:dash_impulse の tick 効果（速度を加えた直後）・impulse の最初・impulse_tick から呼ばれる
# @s ＝ プレイヤー

scoreboard players set @s dash_on 0
scoreboard players set @s dash_l1 0
scoreboard players set @s dash_l2 0
scoreboard players set @s dash_l4 0
scoreboard players set @s dash_l8 0
scoreboard players set @s dash_l16 0
scoreboard players set @s dash_l32 0
scoreboard players set @s dash_u1 0
scoreboard players set @s dash_u2 0
scoreboard players set @s dash_u4 0
scoreboard players set @s dash_u8 0
scoreboard players set @s dash_u16 0
scoreboard players set @s dash_u32 0
scoreboard players set @s dash_f1 0
scoreboard players set @s dash_f2 0
scoreboard players set @s dash_f4 0
scoreboard players set @s dash_f8 0
scoreboard players set @s dash_f16 0
scoreboard players set @s dash_f32 0
