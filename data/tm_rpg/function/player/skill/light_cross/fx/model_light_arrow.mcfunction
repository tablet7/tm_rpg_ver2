#> tm_rpg:player/skill/light_cross/fx/model_light_arrow

# スキル light_cross の見た目: リソースパックのモデル tm_rpg:skill/light_cross/light_arrow（spike・cross）を、出したばかりの弾・設置物に持たせる
# 弾・設置物の設定の関数（skill2 など）から、main_projectile/init より前に呼ぶ（出すときの1回だけ）
# 自動生成（mc-skill-fx の mcfx.py build light_cross_fx.json）。手で直さず、設計図を直して作り直す
# 大きさ [0.6, 0.6, 1.6] マス・傾き 0°（進む向きのまわり）。brightness ＝ 暗い場所でも光って見える
# @s ＝ 出したばかりの弾・設置物（item_display）

data merge entity @s {teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,1.6f]},item:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:item_model":"tm_rpg:skill/light_cross/light_arrow"}}}
