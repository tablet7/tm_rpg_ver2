#> tm_rpg:player/skill/main_projectile/tick

# 弾（tag projectile）の毎 tick の処理。main から呼ばれる
# 順番: 当たり判定（種類ごとの処理も） → 移動 → 見た目
# 消える時間（kill_time）は、ほかの消えるエンティティと同じく main の system kill（tag delete_entity）が減らして消す
# @s ＝ 弾（at @s）

# 時間差で設置物などを出す管理役（tag spawner）は、出す処理だけをする（main_projectile/spawner/tick）
execute if entity @s[tag=spawner] run return run function tm_rpg:player/skill/main_projectile/spawner/tick
# 一定の間隔でスキルを撃つタレット（tag turret）は、撃つ処理だけをする（main_projectile/turret/tick）
execute if entity @s[tag=turret] run return run function tm_rpg:player/skill/main_projectile/turret/tick

# 当たり判定と種類ごとの処理（1 が返ったら、貫通しない弾が当たったので消える。tag explode_hit の爆発は hit の中で起きる）
execute if entity @s[tag=damage_marker] unless score @s hit_interval matches 1.. if function tm_rpg:system/delete_entity_direction/damage_main run return run kill @s
# 一定の間隔で当たる弾（スコア hit_interval が 1 以上）は、hit_interval の tick ごとにだけ当たり判定をする（main_projectile/interval）
execute if entity @s[tag=damage_marker] if score @s hit_interval matches 1.. if function tm_rpg:player/skill/main_projectile/interval if function tm_rpg:system/delete_entity_direction/damage_main run return run kill @s

# 時間切れで爆発する弾（tag explode_time）。main は弾の tick のあとで kill_time を減らして -1 で消すので、0 の tick が最後
# ここで爆発し、消すのは main の system kill に任せる（壁で爆発した弾は remove_move_tag が explode_time を外すので二重にならない）
execute if entity @s[tag=explode_time] if score @s kill_time matches ..0 run return run function tm_rpg:player/skill/main_projectile/explode

# 移動（tag move_entity）
execute if entity @s[tag=move_entity] run function tm_rpg:system/delete_entity_direction/move_main

# 見た目（tag image_marker）。移動したあとの場所で出す
execute if entity @s[tag=image_marker] at @s run function tm_rpg:system/delete_entity_direction/image_main

# 出ているあいだの演出（tag fx_tick。スキルごとの <スキル>/fx/tick を呼ぶ。player/skill/fx/tick）
execute if entity @s[tag=fx_tick] at @s run function tm_rpg:player/skill/fx/tick

# 向きが変わる太いレーザー（tag beam_sweep）。当たり判定・見た目のあとで向きを変え、次の tick から新しい向きで動く
execute if entity @s[tag=beam_sweep] run function tm_rpg:player/skill/main_projectile/beam/sweep
