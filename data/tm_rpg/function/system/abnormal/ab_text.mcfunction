#> tm_rpg:system/abnormal/ab_text

# 状態異常の発生表示（text_display）を設定する関数（マクロなし）
# 各状態異常のダメージ関数から execute summon text_display run で呼ばれる
# 入力: storage tm_rpg:ab_text の x_rand, y_rand, z_rand（表示のずれ）、type（状態異常名）、damage（威力）、time（残り時間）、color（色）
# 表示は「<type><damage>：<time>」
# @s ＝ 召喚した text_display

data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},billboard:"vertical",text:{"bold":true,"text":"","extra":["","","：",""]},Tags:["damage_display","delete_entity"]}

# 表示のずれ（召喚位置からずらす）
data modify entity @s transformation.translation[0] set from storage tm_rpg:ab_text x_rand
data modify entity @s transformation.translation[1] set from storage tm_rpg:ab_text y_rand
data modify entity @s transformation.translation[2] set from storage tm_rpg:ab_text z_rand

# 文字（威力・残り時間は数値なので文字列にして入れる）と色
data modify entity @s text.extra[0] set from storage tm_rpg:ab_text type
data modify entity @s text.extra[1] set string storage tm_rpg:ab_text damage
data modify entity @s text.extra[3] set string storage tm_rpg:ab_text time
data modify entity @s text.color set from storage tm_rpg:ab_text color

scoreboard players set @s kill_time 20
