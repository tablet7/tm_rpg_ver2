#> tm_rpg:player/skill/main_projectile/turret/aim

# タレットを、16 マス以内の一番近い敵の方へ横の向きだけ変える（いなければ変えない）。turret/tick から呼ばれる
# 置いた人（ent_id が #skill_owner temp と同じプレイヤー）は選ばない（PvP で hitdamage が付いていても狙わない）
# 範囲を変えるときは distance=..16 を書きかえる
# @s ＝ タレット（at @s）。先に turret/restore で #skill_owner temp を入れておくこと

execute as @a if score @s ent_id = #skill_owner temp run tag @s add turret_owner
execute if entity @s[tag=!enemy_shot] facing entity @e[type=#tm_rpg:mob_type,tag=mob,tag=hitdamage,tag=!turret_owner,distance=..16,sort=nearest,limit=1] feet rotated ~ 0 run rotate @s ~ ~
# 敵が置いたタレット（tag enemy_shot）は、いちばん近いプレイヤーの方を向く
execute if entity @s[tag=enemy_shot] facing entity @a[tag=mob,gamemode=!spectator,distance=..16,sort=nearest,limit=1] feet rotated ~ 0 run rotate @s ~ ~
tag @a[tag=turret_owner] remove turret_owner
