#> tm_rpg:system/damage_ex/evasion_text_display

# 回避したときの「MISS」の表示（text_display）を設定する関数（マクロなし）
# damage_ex/evasion_damage から execute summon text_display run で呼ばれる
# 入力: storage tm_rpg:damage_text_dis の x_rand, y_rand, z_rand（表示のずれ）
# @s ＝ 召喚した text_display

# 文字は MISS の絵（フォント tm_rpg:popup の \ue000。md/font_md/hud/gen_hud_font.py が作る）。背景の灰色の四角は消す
data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.6f,1.6f,1.6f]},billboard:"vertical",background:0,text:{"text":"\ue000","font":"tm_rpg:popup"},Tags:["damage_display","delete_entity"]}

# 表示のずれ（召喚位置からずらす）
data modify entity @s transformation.translation[0] set from storage tm_rpg:damage_text_dis x_rand
data modify entity @s transformation.translation[1] set from storage tm_rpg:damage_text_dis y_rand
data modify entity @s transformation.translation[2] set from storage tm_rpg:damage_text_dis z_rand

scoreboard players set @s kill_time 20
