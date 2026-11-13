#> tm_rpg:player/skill/main_projectile/init

# 弾の共通の初期設定。各スキルの弾の関数（execute summon ... run function で呼んだもの）の最後に呼ぶ
# 基本のタグ・id・撃った人・ダメージ・当たったときの関数・消えるまでの tick を弾に入れる
# 先にプレイヤー側で player/skill/skill_damage を呼び、storage tm_rpg:damage に kill_time を入れておくこと（func を変えるときは skill_damage のあとで上書き）
# 弾の見た目（item replace など）は、これより前に済ませること（func を弾のアイテムに書くので、あとでアイテムを入れ替えると消える）
# 弾は item_display か marker（当たったときの関数を持たせられるのがこの2つ）
# @s ＝ 出したばかりの弾

# 基本のタグ（projectile: main が毎 tick 動かす / damage_marker: 当たり判定を動かす / delete_entity: kill_time で消える・reload で消える）
tag @s add projectile
tag @s add damage_marker
tag @s add delete_entity

# 当たり判定の大きさ（スキル側で入れていなければ 1 マス四方）
execute unless score @s hit_size matches 1.. run scoreboard players set @s hit_size 1

# 弾の id（当たり判定で、同じ敵に2回当たらないように使う）
execute store result score @s ent_id run random value 0..2147483646

# 撃った人（player/skill/start が #skill_owner temp に入れている）
scoreboard players operation @s summon_ent_id = #skill_owner temp

# ダメージ（当たり判定の hit_prepare が読む）
execute store result score @s damage_give_p run data get storage tm_rpg:damage p_damage
execute store result score @s damage_give_m run data get storage tm_rpg:damage m_damage
execute store result score @s damage_give_c run data get storage tm_rpg:damage c_damage

# 当たったときに実行する関数。文字列のまま弾に持たせる（何もしない non_func のときは書かない。書くのは出すときの1回だけ）
execute unless data storage tm_rpg:damage {func:"tm_rpg:system/naguri/non_func"} if entity @s[type=minecraft:item_display] run data modify entity @s item.components."minecraft:custom_data".func set from storage tm_rpg:damage func
execute unless data storage tm_rpg:damage {func:"tm_rpg:system/naguri/non_func"} if entity @s[type=minecraft:marker] run data modify entity @s data.func set from storage tm_rpg:damage func

# 消えるまでの tick（main の system kill で 1 ずつ減り、-1 になると消える）
execute store result score @s kill_time run data get storage tm_rpg:damage kill_time
