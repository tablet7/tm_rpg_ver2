#> tm_rpg:system/abnormal/ab_text

# 状態異常の発生表示（text_display）を設定する関数（マクロなし）
# 各状態異常のダメージ関数から execute summon text_display run で呼ばれる
# 入力: storage tm_rpg:ab_text の x_rand, y_rand, z_rand（表示のずれ）、type（アイコンの文字）、damage（威力）、time（残り秒数）、color（威力の色）
# 表示は「<アイコン><威力><右下に小さく秒数>」。秒数は 100 以上なら 99+
# フォント（md/font_md/hud/gen_hud_font.py が作る）: tm_rpg:popup（アイコン）、tm_rpg:dmg（縁取りの数字）、tm_rpg:dmg_sub（小さい縁取りの数字）
# アイコンは絵の色のまま出すため、color を white にして染めない
# @s ＝ 召喚した text_display

data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.6f,1.6f,1.6f]},billboard:"vertical",background:0,text:{"text":"","extra":[{"text":"","font":"tm_rpg:popup","color":"white"},{"text":"","font":"tm_rpg:dmg"},{"text":"","font":"tm_rpg:dmg_sub","color":"#e8e8e8"}]},Tags:["damage_display","delete_entity"]}

# 表示のずれ（召喚位置からずらす）
data modify entity @s transformation.translation[0] set from storage tm_rpg:ab_text x_rand
data modify entity @s transformation.translation[1] set from storage tm_rpg:ab_text y_rand
data modify entity @s transformation.translation[2] set from storage tm_rpg:ab_text z_rand

# アイコン・威力・秒数（数値は文字列にして入れる）と色
data modify entity @s text.extra[0].text set from storage tm_rpg:ab_text type
data modify entity @s text.extra[1].text set string storage tm_rpg:ab_text damage
data modify entity @s text.extra[2].text set string storage tm_rpg:ab_text time
execute store result score #ab_time temp run data get storage tm_rpg:ab_text time
execute if score #ab_time temp matches 100.. run data modify entity @s text.extra[2].text set value "99+"
data modify entity @s text.color set from storage tm_rpg:ab_text color

scoreboard players set @s kill_time 20
