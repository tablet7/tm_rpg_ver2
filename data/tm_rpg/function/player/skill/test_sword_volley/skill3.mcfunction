#> tm_rpg:player/skill/test_sword_volley/skill3

# スキル「test剣の一斉射撃」の管理役が、待っている剣をランダムに1本選んで撃つ関数。main_projectile/spawner/spawn から、tag test_sword_volley で呼ばれる
# 同じ spawner_id の待っている剣に印を付け、その中からランダムに1本を skill4 で撃つ（実行位置 ＝ 管理役の場所）
# 探す範囲: 管理役は最大 3 ＋ 2.5 ×（本数 − 1）＝ 25.5 マス前（10本のとき）、剣はプレイヤーの頭上の箱の中なので、40 マスあれば足りる
#           本数や進む距離を増やしたら、この範囲も広げる（足りないと、遠い剣が撃たれずに消える）
# @s ＝ 管理役（at @s）

scoreboard players operation #spawner_id temp = @s spawner_id
execute as @e[type=minecraft:item_display,tag=sword_volley_wait,distance=..40] if score @s spawner_id = #spawner_id temp run tag @s add sword_volley_pick
execute as @e[type=minecraft:item_display,tag=sword_volley_pick,sort=random,limit=1] run function tm_rpg:player/skill/test_sword_volley/skill4
tag @e[type=minecraft:item_display,tag=sword_volley_pick,distance=..40] remove sword_volley_pick
