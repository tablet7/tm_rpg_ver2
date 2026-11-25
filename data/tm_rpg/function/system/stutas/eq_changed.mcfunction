#> tm_rpg:system/stutas/eq_changed

# 装備が変わった（目印の運の属性の合計 eq_sig が前の tick と違う）ときの関数。player/main から呼ばれる
# 今の値を覚えて、装備の読み直しとステータスの組み立て直しを頼む（実際に読むのは stutas/hendou_main → eq_update）
# @s ＝ プレイヤー

scoreboard players operation @s eq_sig_old = @s eq_sig
scoreboard players set @s eq_dirty 1
scoreboard players set @s stat_dirty 1
