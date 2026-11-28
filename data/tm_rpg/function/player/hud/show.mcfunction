#> tm_rpg:player/hud/show

# HUD（HP・MP のバーと数字、スキルのリング、状態異常）をアクションバーに送る関数（マクロなし）
# player/hud/update（HP・MP が変わったとき）、player/seconds（毎秒の送り直し）、player/hud/hold_tick から呼ばれる
# 絵と位置は md/font_md/hud/gen_hud_font.py が作るフォント（tm_rpg:hud_*）。説明書: md/font_md/hud/hud.md
# 全体の送り幅を 0 にしてあるので、画面の中央から書き始める。並び（中央からの px）:
#   HP の数字（右端 -82）・HP バー（-80〜-21）・ハート（-19）｜マナ（+11）・MP バー（+21〜+80）・MP の数字（左端 +82）
#   リング（-40〜+41）、状態異常の段（中央そろえ。player/hud/ab_build が storage tm_rpg:hud の row・post に作る）
# 文字の役目:
#   hud_icon: @E100 -82 / @E101 +2 / @E102 +1 / @E103 +20 / @E104 -122 / @E106 -42 / @E000 ハート / @E001 マナ（@ は \u）
#   hud_hp・hud_mp: 0〜9 ＝ バーの1区切り（hud_hp_g0〜5・hud_mp_g0〜5）
#   hud_num: 数字、hud_neg: 数字1文字ぶん左へ戻る（同じスコアを2回出して、数字の幅を打ち消す）
#   hud_skill1〜6: 0 ＝ 使える、1〜9 ＝ クールタイムの残りの割合（skill1_ring〜skill6_ring）
# @s ＝ プレイヤー

# ほかのメッセージをアクションバーに出しているあいだは送らない
execute if score @s hud_hold matches 1.. run return 0

# 状態異常の段（かかっている物だけ）
function tm_rpg:player/hud/ab_build

title @s actionbar [{"text":""},\
{"text":"\ue100","font":"tm_rpg:hud_icon"},\
{"score":{"name":"@s","objective":"hp"},"font":"tm_rpg:hud_neg"},\
{"score":{"name":"@s","objective":"hp"},"font":"tm_rpg:hud_num"},\
{"text":"\ue101","font":"tm_rpg:hud_icon"},\
{"score":{"name":"@s","objective":"hud_hp_g0"},"font":"tm_rpg:hud_hp","shadow_color":0},\
{"score":{"name":"@s","objective":"hud_hp_g1"},"font":"tm_rpg:hud_hp","shadow_color":0},\
{"score":{"name":"@s","objective":"hud_hp_g2"},"font":"tm_rpg:hud_hp","shadow_color":0},\
{"score":{"name":"@s","objective":"hud_hp_g3"},"font":"tm_rpg:hud_hp","shadow_color":0},\
{"score":{"name":"@s","objective":"hud_hp_g4"},"font":"tm_rpg:hud_hp","shadow_color":0},\
{"score":{"name":"@s","objective":"hud_hp_g5"},"font":"tm_rpg:hud_hp","shadow_color":0},\
{"text":"\ue102\ue000\ue103\ue001","font":"tm_rpg:hud_icon","shadow_color":0},\
{"score":{"name":"@s","objective":"hud_mp_g0"},"font":"tm_rpg:hud_mp","shadow_color":0},\
{"score":{"name":"@s","objective":"hud_mp_g1"},"font":"tm_rpg:hud_mp","shadow_color":0},\
{"score":{"name":"@s","objective":"hud_mp_g2"},"font":"tm_rpg:hud_mp","shadow_color":0},\
{"score":{"name":"@s","objective":"hud_mp_g3"},"font":"tm_rpg:hud_mp","shadow_color":0},\
{"score":{"name":"@s","objective":"hud_mp_g4"},"font":"tm_rpg:hud_mp","shadow_color":0},\
{"score":{"name":"@s","objective":"hud_mp_g5"},"font":"tm_rpg:hud_mp","shadow_color":0},\
{"text":"\ue102","font":"tm_rpg:hud_icon"},\
{"score":{"name":"@s","objective":"mp"},"font":"tm_rpg:hud_num"},\
{"score":{"name":"@s","objective":"mp"},"font":"tm_rpg:hud_neg"},\
{"text":"\ue104","font":"tm_rpg:hud_icon"},\
{"score":{"name":"@s","objective":"skill1_ring"},"font":"tm_rpg:hud_skill1","shadow_color":0},\
{"text":"\ue101","font":"tm_rpg:hud_icon"},\
{"score":{"name":"@s","objective":"skill2_ring"},"font":"tm_rpg:hud_skill2","shadow_color":0},\
{"text":"\ue101","font":"tm_rpg:hud_icon"},\
{"score":{"name":"@s","objective":"skill3_ring"},"font":"tm_rpg:hud_skill3","shadow_color":0},\
{"text":"\ue101","font":"tm_rpg:hud_icon"},\
{"score":{"name":"@s","objective":"skill4_ring"},"font":"tm_rpg:hud_skill4","shadow_color":0},\
{"text":"\ue101","font":"tm_rpg:hud_icon"},\
{"score":{"name":"@s","objective":"skill5_ring"},"font":"tm_rpg:hud_skill5","shadow_color":0},\
{"text":"\ue101","font":"tm_rpg:hud_icon"},\
{"score":{"name":"@s","objective":"skill6_ring"},"font":"tm_rpg:hud_skill6","shadow_color":0},\
{"text":"\ue106","font":"tm_rpg:hud_icon"},\
{"nbt":"row[]","storage":"tm_rpg:hud","interpret":true,"separator":""},\
{"nbt":"post[]","storage":"tm_rpg:hud","interpret":true,"separator":""}]
