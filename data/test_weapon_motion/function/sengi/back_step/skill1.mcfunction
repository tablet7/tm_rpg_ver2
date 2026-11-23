#> test_weapon_motion:sengi/back_step/skill1

# 戦技「バックステップ」: 後ろへ跳び退く。スキル tm_rpg:player/skill/move/back_jump/skill1 と同じ動き（tm_rpg:player/dash/impulse）
# 武器の custom_data の sengi（戦技1）・sengi2（戦技2）に "test_weapon_motion:sengi/back_step/skill1" と書くと、シフト＋右クリックで使える（sengi/common/use から呼ばれる）
# MP は使わない。クールタイムは 5 秒（100 tick）で固定（#sengi_cd twm_tmp に入れる。プレイヤーの cooltime では減らない）
# 速度はエンチャント tm_rpg:dash_impulse で加えるので、武器にこのエンチャントを付けておく（loot_table の set_components）
# 戻り値: 1 ＝ 成功
# @s ＝ プレイヤー（at @s。向きも使う）

# 後ろへ 0.8、上へ 0.6 ブロック/tick
scoreboard players set @s dash_x 0
scoreboard players set @s dash_y 60
scoreboard players set @s dash_z -80
function tm_rpg:player/dash/impulse

particle minecraft:cloud ~ ~0.2 ~ 0.3 0.1 0.3 0.02 8
playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.6 1.6

# クールタイム 5 秒
scoreboard players set #sengi_cd twm_tmp 100
return 1
