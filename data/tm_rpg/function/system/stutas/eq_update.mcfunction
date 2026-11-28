#> tm_rpg:system/stutas/eq_update

# 装備によるステータス（eq_<ステータス>）と割合ボーナスの倍率（eq_pct_hp）を読み直す関数。stutas/hendou_main から、eq_dirty が 0 でないときだけ呼ばれる
# 装備のデータ読み込みは重いので、装備が変わったとき（player/main の目印の確認）・2秒ごとの念のための立て直し（player/2second）・召喚直後だけ動く
# @s ＝ プレイヤーまたは敵

scoreboard players set @s eq_dirty 0

# 装備の合計を 0 にしてから読み直す
scoreboard players set @s eq_hp 0
scoreboard players set @s eq_mp 0
scoreboard players set @s eq_hp_rege 0
scoreboard players set @s eq_mp_rege 0
scoreboard players set @s eq_armor 0
scoreboard players set @s eq_magic_armor 0
scoreboard players set @s eq_p_attack 0
scoreboard players set @s eq_m_attack 0
scoreboard players set @s eq_cooltime 0
scoreboard players set @s eq_sustain_time 0
scoreboard players set @s eq_sustain_power 0
scoreboard players set @s eq_crit_per 0
scoreboard players set @s eq_crit_damage 0
scoreboard players set @s eq_job_bonus 0
scoreboard players set @s eq_luck 0
scoreboard players set @s eq_evasion 0

# 特化装備の割合（%）の倍率
function tm_rpg:system/stutas/percent_watch

# 装備の custom_data のステータス
function tm_rpg:system/stutas/equipment_watch
