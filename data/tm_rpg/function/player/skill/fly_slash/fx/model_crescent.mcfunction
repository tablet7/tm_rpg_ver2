#> tm_rpg:player/skill/fly_slash/fx/model_crescent

# スキル fly_slash の見た目: リソースパックのモデル tm_rpg:skill/fly_slash/crescent（crescent・flat）を、出したばかりの弾・設置物に持たせる
# 弾・設置物の設定の関数（skill2 など）から、main_projectile/init より前に呼ぶ（出すときの1回だけ）
# 自動生成（mc-skill-fx の mcfx.py build fly_slash_fx.json）。手で直さず、設計図を直して作り直す
# 大きさ 3 マス・傾き -40°（進む向きのまわり）。brightness ＝ 暗い場所でも光って見える
# @s ＝ 出したばかりの弾・設置物（item_display）

data merge entity @s {teleport_duration:1,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,-0.342f,0.94f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},item:{id:"minecraft:white_stained_glass",count:1,components:{"minecraft:item_model":"tm_rpg:skill/fly_slash/crescent"}}}
