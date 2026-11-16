#> tm_rpg:system/delete_entity_direction/homing/main

# 追尾する弾（tag homing）の毎 tick の処理。16マス以内でいちばん近い敵の方へ向きを変える。system/delete_entity_direction/move_main から、移動（tp）の前に呼ばれる
# 狙う敵は当たり判定（main_projectile/hit）と同じ（tag mob・hitdamage、撃った人以外）。敵がいなければ曲がらない
# 旋回の速さは弾のタグで決める（homing5 / homing10 / homing20。1 tick に曲がる角度。中身は homing/turn）
# @s ＝ 弾（at @s）

# 撃った人を狙わないように、撃った人（ent_id が弾の summon_ent_id と同じプレイヤー）に一時的なタグを付ける
# 撃った人がいない弾は reset のまま（だれにもタグが付かない）
scoreboard players reset #homing_owner temp
scoreboard players operation #homing_owner temp = @s summon_ent_id
execute as @a if score @s ent_id = #homing_owner temp run tag @s add homing_owner

# いちばん近い敵の方を向いた状態で turn を呼ぶ（@s は弾のまま。敵がいなければ呼ばれない）
execute if entity @s[tag=!enemy_shot] facing entity @e[type=#tm_rpg:mob_type,tag=mob,tag=hitdamage,tag=!homing_owner,distance=..16,sort=nearest,limit=1] eyes run function tm_rpg:system/delete_entity_direction/homing/turn
# 敵が撃った弾（tag enemy_shot）は、いちばん近いプレイヤーを追う
execute if entity @s[tag=enemy_shot] facing entity @a[tag=mob,gamemode=!spectator,distance=..16,sort=nearest,limit=1] eyes run function tm_rpg:system/delete_entity_direction/homing/turn

tag @a[tag=homing_owner] remove homing_owner
