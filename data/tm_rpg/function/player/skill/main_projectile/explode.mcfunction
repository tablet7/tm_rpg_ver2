#> tm_rpg:player/skill/main_projectile/explode

# 弾の爆発（共通）。弾の位置で、見た目とダメージを別々に出す
# 呼ばれ方（爆発のきっかけのタグ。いくつ付けてもよい）
#   tag explode_hit  … 敵に当たったとき（貫通する弾も、当たった tick ごと）。main_projectile/hit から
#   tag explode_wall … 壁に当たったとき（tag stop_move も要る）。system/delete_entity_direction/remove_move_tag から
#   tag explode_time … 時間切れ（kill_time が切れる tick）。main_projectile/tick から
# 見た目のタグ（無ければ見た目なし。足すときは explode_fx/ に関数を作り、下に1行足す）
#   tag explode_fx_blast   … 爆発のパーティクルと音（explode_fx/blast）
#   tag explode_fx_end_rod … end_rod のパーティクルを周りに広げる（explode_fx/end_rod）
# 半径のタグ（無ければダメージなし。足すときは下に1行足す）
#   tag explode3 ＝ 3マス / explode5 ＝ 5マス
# ダメージは弾と同じ値。1発の弾につき、敵1体には直撃と爆発を合わせて1回だけ当たる（tama_hit_id）。撃った人には当たらない
# 当たったときの関数（func）があるスキルでは、爆発に巻き込まれた敵にも func が動く
# 注意: ノックバックは damage_dealt_tama の「3マス以内の弾から」なので、3マスより遠い敵はダメージだけでノックバックしない
# @s ＝ 爆発する弾（at @s）

# 弾のダメージ・id・撃った人・func を #tama_* temp と storage tm_rpg:tama に用意する（壁・時間切れでは hit を通っていないので、ここで必ず呼ぶ）
function tm_rpg:player/skill/main_projectile/hit_prepare

# 見た目
execute if entity @s[tag=explode_fx_blast] run function tm_rpg:player/skill/main_projectile/explode_fx/blast
execute if entity @s[tag=explode_fx_end_rod] run function tm_rpg:player/skill/main_projectile/explode_fx/end_rod

# ダメージ（半径内の敵ごとに hit_target が storage tm_rpg:damage に入れ直して damage_dealt_tama を呼ぶ）
execute if entity @s[tag=explode3] as @e[type=#tm_rpg:mob_type,tag=mob,tag=hitdamage,distance=..3] unless score @s tama_hit_id = #tama_id temp unless score @s ent_id = #tama_owner temp at @s run function tm_rpg:player/skill/main_projectile/hit_target
execute if entity @s[tag=explode5] as @e[type=#tm_rpg:mob_type,tag=mob,tag=hitdamage,distance=..5] unless score @s tama_hit_id = #tama_id temp unless score @s ent_id = #tama_owner temp at @s run function tm_rpg:player/skill/main_projectile/hit_target
