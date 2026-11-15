#> tm_rpg:player/skill/main_projectile/spawner/child_init

# 管理役が出した子（設置物など）の共通の初期設定。<スキル>/skill4 など、子の設定の最後に main_projectile/init のかわりに呼ぶ
# init を呼んだあと、id・開始時刻・当たる間隔をグループのもの（spawner/spawn が #spawn_* temp に入れたもの）にする
# → グループ全体で当たり判定を共有する（1回だけなら全体で1体1回、hit_interval があれば1回の間隔に全体で1体1回）
# 最後に tick を1回動かす（main の弾のくり返しは、この子を出す前に対象が決まっているので、この tick には動かない。出した tick の当たり判定を逃さないように）
# @s ＝ 出したばかりの子（実行位置は子を出した場所。子の設定で動かしていることがある）

# 当たる間隔（init が開始時刻を入れるかどうかを決めるので、init より前に入れる）
execute if score #spawn_hit_interval temp matches 1.. run scoreboard players operation @s hit_interval = #spawn_hit_interval temp

function tm_rpg:player/skill/main_projectile/init

# グループの id と開始時刻（管理役が tag spawn_separate なら #spawn_id が reset のままなので、init が入れた自分の id を使う）
execute if score #spawn_id temp matches -2147483648.. run scoreboard players operation @s ent_id = #spawn_id temp
execute if score #spawn_id temp matches -2147483648.. run scoreboard players operation @s hit_base_id = #spawn_id temp
execute if score #spawn_id temp matches -2147483648.. run scoreboard players operation @s hit_start = #spawn_start temp

# この tick の分を動かす（at @s で、子の今の位置・向きにする。子の設定で位置や向きを変えていても、出した場所ではなく子の場所で動く）
execute at @s run function tm_rpg:player/skill/main_projectile/tick
