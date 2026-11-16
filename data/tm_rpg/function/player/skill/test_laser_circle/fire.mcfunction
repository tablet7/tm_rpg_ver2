#> tm_rpg:player/skill/test_laser_circle/fire

# スキル「test円レーザー」の本体（ダメージ計算のあと）。プレイヤーは skill1 から、敵は enemy/skill/warn_test_laser_circle（予兆のあと）から呼ばれる
# 先に storage tm_rpg:damage（p/m/c_damage・func）と #skill_owner temp・#skill_side temp を入れておくこと（ダメージは player/skill/skill_damage）
# @s ＝ 使ったプレイヤーか敵（at @s。向き ＝ 使う向き）

# レーザーが出ている tick（40 ＝ 2秒。skill2 の circle_period 40 なので1周）
data modify storage tm_rpg:damage kill_time set value 40
# 敵が使ったときは、出しているあいだ（40 tick）自分から動けない（enemy/skill/end → enemy/skill/lock。プレイヤーには関係ない）
scoreboard players set #skill_lock temp 40

# 目の高さの1マス前から、使う向きで出す（この向きが円の中心になる）
execute anchored eyes positioned ^ ^ ^1 summon minecraft:item_display run function tm_rpg:player/skill/test_laser_circle/skill2
